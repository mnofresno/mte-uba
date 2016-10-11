class CreateUnidadesChofer < ActiveRecord::Migration
  def change
    create_table :unidades_chofer do |t|
      t.belongs_to :unidad, index: true, foreign_key: true
      t.belongs_to :chofer, index: true, foreign_key: true
      t.belongs_to :turno, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
