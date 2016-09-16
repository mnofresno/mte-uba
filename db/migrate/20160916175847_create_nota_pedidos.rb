class CreateNotaPedidos < ActiveRecord::Migration
  def change
    create_table :nota_pedidos do |t|
      t.string :numeroserie
      t.date :fecha

      t.timestamps null: false
    end
  end
end
