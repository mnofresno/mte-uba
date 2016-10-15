class RenameUnidadChoferTable < ActiveRecord::Migration
  def change
    rename_table :unidades_chofer, :unidad_choferes
  end
end
