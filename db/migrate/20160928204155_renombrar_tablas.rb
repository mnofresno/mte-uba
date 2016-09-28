class RenombrarTablas < ActiveRecord::Migration
  def self.up
    rename_table :direccions      , :direcciones
    rename_table :tallers         , :talleres
    rename_table :unidads         , :unidades
    rename_table :chofers         , :choferes
    rename_table :nota_reparacions, :notas_reparaciones
    rename_table :nota_pedidos    , :notas_pedidos
  end

  def self.down
    rename_table :direcciones       , :direccions
    rename_table :talleres          , :tallers
    rename_table :unidades          , :unidads
    rename_table :choferes          , :chofers
    rename_table :notas_reparaciones, :nota_reparacions
    rename_table :notas_pedidos     , :nota_pedidos
  end
end
