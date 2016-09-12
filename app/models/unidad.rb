# == Schema Information
#
# Table name: unidads
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
#  index_unidads_on_taller_id  (taller_id)
#
# Foreign Keys
#
#  fk_rails_5507aeb95c  (taller_id => tallers.id)
#

class Unidad < ActiveRecord::Base
  belongs_to :taller
  #has_one :choferMañana, class_name:'Chofer'
  #has_one :choferNoche, class_name:'Chofer'
end
