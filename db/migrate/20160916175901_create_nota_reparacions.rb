class CreateNotaReparacions < ActiveRecord::Migration
  def change
    create_table :nota_reparacions do |t|
      t.string :numeroserie
      t.date :fecha

      t.timestamps null: false
    end
  end
end
