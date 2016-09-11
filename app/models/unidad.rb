class Unidad < ActiveRecord::Base
  has_one :choferMañana, class_name:'Chofer'
  has_one :choferNoche, class_name:'Chofer'
end
