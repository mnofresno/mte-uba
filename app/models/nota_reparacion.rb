# == Schema Information
#
# Table name: nota_reparacions
#
#  id          :integer          not null, primary key
#  numeroserie :string
#  fecha       :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class NotaReparacion < ActiveRecord::Base
  has_many :detalles, as: :detallable, class_name:"Detalle", dependent: :destroy
end
