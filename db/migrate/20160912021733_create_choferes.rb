class CreateChoferes < ActiveRecord::Migration
  def change
    create_table :choferes do |t|
      t.string :nombre
      t.string :apellido
      t.string :radio
      t.belongs_to :taller, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
