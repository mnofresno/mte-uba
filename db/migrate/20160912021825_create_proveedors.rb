class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.belongs_to :taller, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
