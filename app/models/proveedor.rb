# == Schema Information
#
# Table name: proveedors
#
#  id         :integer          not null, primary key
#  nombre     :string
#  taller_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_proveedors_on_taller_id  (taller_id)
#
# Foreign Keys
#
#  fk_rails_9faad6d824  (taller_id => tallers.id)
#

class Proveedor < ActiveRecord::Base
  belongs_to :taller
  has_many :direcciones, as: :direccionable, class_name:"Direccion"
end
