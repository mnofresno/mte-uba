# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Role < ActiveRecord::Base
  has_many :memberships, class_name:"Membership"

  has_many :talleres, through: :memberships, class_name:"Taller"
  has_many :usuarios, through: :memberships, class_name:"Usuario"

  class << self
    ADMIN_NAME = 'administrador'
    OPERATOR_NAME = 'operador'
    OWNER_NAME = 'propietario'

    def administrador
      @administrador ||= find_by_name(ADMIN_NAME) || Role.create(name: ADMIN_NAME)
    end

    def operador
      @operador ||= find_by_name(OPERATOR_NAME) || Role.create(name: OPERATOR_NAME)
    end

    def propietario
      @propietario ||= find_by_name(OWNER_NAME) || Role.create(name: OWNER_NAME)
    end
  end

end
