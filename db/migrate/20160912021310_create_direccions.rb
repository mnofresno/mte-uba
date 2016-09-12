class CreateDireccions < ActiveRecord::Migration
  def change
    create_table :direccions do |t|
      t.string :calle
      t.integer :altura
      t.references :direccionable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
