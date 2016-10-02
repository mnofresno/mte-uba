# == Schema Information
#
# Table name: usuarios
#
#  id                     :integer          not null, primary key
#  nombre                 :string
#  apellido               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  invitation_token       :string
#  invitation_created_at  :datetime
#  invitation_sent_at     :datetime
#  invitation_accepted_at :datetime
#  invitation_limit       :integer
#  invited_by_id          :integer
#  invited_by_type        :string
#  invitations_count      :integer          default(0)
#
# Indexes
#
#  index_usuarios_on_confirmation_token    (confirmation_token) UNIQUE
#  index_usuarios_on_email                 (email) UNIQUE
#  index_usuarios_on_invitation_token      (invitation_token) UNIQUE
#  index_usuarios_on_invitations_count     (invitations_count)
#  index_usuarios_on_invited_by_id         (invited_by_id)
#  index_usuarios_on_reset_password_token  (reset_password_token) UNIQUE
#

class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  has_many :memberships, -> { includes [:taller, :role]}, class_name:"Membership", dependent: :destroy
  has_many :talleres, through: :memberships, class_name:"Taller"

  has_one :taller, foreign_key: :owner_id

  validates_presence_of :nombre, :apellido, :email

  accepts_nested_attributes_for :taller
  accepts_nested_attributes_for :memberships


  def full_name
    "#{self.apellido}, #{self.nombre}"
  end


  def current_taller
    memberships.where(current:true).first.taller
  end

  def full_role
    memberships.first.role.try(:name)
  end

  def nombre_completo
    "#{nombre} #{apellido}"
  end

  def admin?
    memberships.map(&:role).map(&:name).include?('administrador')
  end

  def operador?
    memberships.map(&:role).map(&:name).include?('operador')
  end

  def propietario?
    memberships.map(&:role).map(&:name).include?('propietario')
  end

  def current_or_first_taller
    current_taller || talleres.first
  end

  def can_managed_engine?(engine)
    current_or_first_taller.engines.include?(engine) &&
      memberships.exists?(role_id: [Role.propietario.id,Role.administrador.id])
  end

  def can_operated_engine?(engine)
    current_or_first_company.engines.include?(engine) &&
      memberships.exists?(role_id: [Role.propietario.id, Role.administrador.id, Role.operador.id])
  end

  def change_current_taller_for(taller)
    Membership.transaction do
      memberships.find_by_current(true).toggle!(:current) unless memberships.find_by_current(true) == nil

      memberships.find_by_taller_id(taller).toggle!(:current)
      reload
    end
  end


  #def active_for_authentication?
  #  super and self.is_active?
  #end




end
