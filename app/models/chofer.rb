# == Schema Information
#
# Table name: choferes
#
#  id         :integer          not null, primary key
#  nombre     :string
#  apellido   :string
#  radio      :string
#  taller_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_choferes_on_taller_id  (taller_id)
#
# Foreign Keys
#
#  fk_rails_4e1c401416  (taller_id => talleres.id)
#

class Chofer < ActiveRecord::Base
  belongs_to :taller, :class_name => Taller, :foreign_key => 'taller_id'
  has_many :unidad_choferes
  has_many :unidades, through: :unidad_choferes
  has_many :turnos, through: :unidad_choferes

  def turnos_unidad_string(unidad_turno)
    str = ""
    unidad_choferes.each do |uni|
      if uni.unidad = unidad_turno
        str += "#{uni.turno.descripcion}; "
      end
    end
    str
  end
end
