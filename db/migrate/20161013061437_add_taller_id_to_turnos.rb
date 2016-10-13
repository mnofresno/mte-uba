class AddTallerIdToTurnos < ActiveRecord::Migration
  def change
    add_reference :turnos, :taller, index: true, foreign_key: true
  end
end
