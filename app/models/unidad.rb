# == Schema Information
#
# Table name: unidades
#
#  id              :integer          not null, primary key
#  patente         :string
#  marca           :string
#  año             :integer
#  fueraDeServicio :boolean
#  taller_id       :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_unidades_on_taller_id  (taller_id)
#
# Foreign Keys
#
#  fk_rails_9f7ec4ef64  (taller_id => talleres.id)
#

class Unidad < ActiveRecord::Base
  belongs_to :taller
  has_many :unidad_choferes
  has_many :choferes, through: :unidad_choferes
end
