# == Schema Information
#
# Table name: proveedores
#
#  id         :integer          not null, primary key
#  nombre     :string
#  taller_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_proveedores_on_taller_id  (taller_id)
#
# Foreign Keys
#
#  fk_rails_85af39fcb4  (taller_id => talleres.id)
#

class Proveedor < ActiveRecord::Base
  belongs_to :taller
  has_many :direcciones, as: :direccionable, class_name:"Direccion"
end
