# == Schema Information
#
# Table name: memberships
#
#  id         :integer          not null, primary key
#  role_id    :integer
#  taller_id  :integer
#  usuario_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  current    :boolean
#
# Indexes
#
#  index_memberships_on_role_id     (role_id)
#  index_memberships_on_taller_id   (taller_id)
#  index_memberships_on_usuario_id  (usuario_id)
#
# Foreign Keys
#
#  fk_rails_9caee70cb5  (taller_id => talleres.id)
#  fk_rails_ab987c7623  (role_id => roles.id)
#  fk_rails_adc0c72a4e  (usuario_id => usuarios.id)
#

class Membership < ActiveRecord::Base
  belongs_to :role
  belongs_to :taller
  belongs_to :usuario
end
