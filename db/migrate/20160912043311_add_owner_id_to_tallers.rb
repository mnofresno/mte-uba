class AddOwnerIdToTallers < ActiveRecord::Migration
  def change
    add_reference :talleres, :owner, refereces: :usuarios
    add_index :talleres, :owner_id
    #add_foreign_key :talleres, :owner, references: :usuarios
  end
end
