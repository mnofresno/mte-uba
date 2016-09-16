# == Schema Information
#
# Table name: nota_pedidos
#
#  id          :integer          not null, primary key
#  numeroserie :string
#  fecha       :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class NotaPedido < ActiveRecord::Base
  has_many :detalles, as: :detallable, class_name:"Detalle", dependent: :destroy
end
