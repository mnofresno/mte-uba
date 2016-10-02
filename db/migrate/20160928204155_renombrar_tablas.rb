class RenombrarTablas < ActiveRecord::Migration
  def self.up

    rename_table :direcciones      , :direcciones unless (table_exists? :direcciones)
    rename_table :talleres         , :talleres unless (table_exists? :talleres)
    rename_table :unidades         , :unidades unless (table_exists? :unidades)
    rename_table :choferes         , :choferes unless (table_exists? :choferes)
    rename_table :nota_reparaciones, :notas_reparaciones unless (table_exists? :notas_reparaciones)
    rename_table :nota_pedidos    , :notas_pedidos unless(table_exists? :notas_pedidos)
  end

  def self.down
    rename_table :direcciones       , :direcciones
    rename_table :talleres          , :talleres
    rename_table :unidades          , :unidades
    rename_table :choferes          , :choferes
    rename_table :notas_reparaciones, :nota_reparaciones
    rename_table :notas_pedidos     , :nota_pedidos
  end
end
