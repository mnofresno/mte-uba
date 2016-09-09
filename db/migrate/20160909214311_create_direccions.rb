class CreateDireccions < ActiveRecord::Migration
  def change
    create_table :direccions do |t|
      t.string :calle
      t.integer :altura
      t.integer :direccionable_id
      t.string :direccionable_type

      t.timestamps null: false
    end
  end
end
