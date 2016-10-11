class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
