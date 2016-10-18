# == Schema Information
#
# Table name: unidades_chofer
#
#  id         :integer          not null, primary key
#  unidad_id  :integer
#  chofer_id  :integer
#  turno_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_unidades_chofer_on_chofer_id  (chofer_id)
#  index_unidades_chofer_on_turno_id   (turno_id)
#  index_unidades_chofer_on_unidad_id  (unidad_id)
#
# Foreign Keys
#
#  fk_rails_146a9a2e81  (turno_id => turnos.id)
#  fk_rails_95afa33fd8  (chofer_id => choferes.id)
#  fk_rails_af5238b50c  (unidad_id => unidades.id)
#

class UnidadChofer < ActiveRecord::Base
   belongs_to :unidad
   belongs_to :chofer
   belongs_to :turno
   
   validates :chofer, presence: true
   validates :turno, presence: true
end
