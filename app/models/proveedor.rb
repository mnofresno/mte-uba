class Proveedor < ActiveRecord::Base
  has_many :direcciones, class_name: "Direccion", as: :direccionable
end
