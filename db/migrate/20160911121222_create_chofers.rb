class CreateChofers < ActiveRecord::Migration
  def change
    create_table :chofers do |t|
      t.string :nombre
      t.string :apellido
      t.string :radio

      t.timestamps null: false
    end
  end
end
