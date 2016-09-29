class RenombrarTablaProveedores < ActiveRecord::Migration
  def self.up
    rename_table :proveedores      , :proveedores unless (table_exists? :proveedores)
  end

  def self.down
    rename_table :proveedores       , :proveedores
  end
end
