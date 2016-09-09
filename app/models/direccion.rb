class Direccion < ActiveRecord::Base

  belongs_to :direccionable, polymorphic: true

end
