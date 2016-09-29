class CreateNotaReparaciones < ActiveRecord::Migration
  def change
    create_table :nota_reparaciones do |t|
      t.string :numeroserie
      t.date :fecha

      t.timestamps null: false
    end
  end
end
