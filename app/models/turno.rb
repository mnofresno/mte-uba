# == Schema Information
#
# Table name: turnos
#
#  id          :integer          not null, primary key
#  descripcion :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  taller_id   :integer
#
# Indexes
#
#  index_turnos_on_taller_id  (taller_id)
#
# Foreign Keys
#
#  fk_rails_eedb56cb00  (taller_id => talleres.id)
#

class Turno < ActiveRecord::Base
  belongs_to :taller, class_name: Taller, foreign_key: 'taller_id'
  scope :by_taller, ->(taller) { where(taller_id: taller.id) }
end
