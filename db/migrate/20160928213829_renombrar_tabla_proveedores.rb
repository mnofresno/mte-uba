class RenombrarTablaProveedores < ActiveRecord::Migration
  def self.up
    rename_table :proveedors      , :proveedores
  end

  def self.down
    rename_table :proveedores       , :proveedors
  end
end
