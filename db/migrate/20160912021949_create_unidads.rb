class CreateUnidads < ActiveRecord::Migration
  def change
    create_table :unidads do |t|
      t.string :patente
      t.string :marca
      t.integer :año
      t.boolean :fueraDeServicio
      t.belongs_to :taller, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
