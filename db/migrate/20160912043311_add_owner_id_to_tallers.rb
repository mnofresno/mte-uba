class AddOwnerIdToTallers < ActiveRecord::Migration
  def change
    add_reference :tallers, :owner, refereces: :usuarios
    add_index :tallers, :owner_id
    #add_foreign_key :tallers, :owner, references: :usuarios
  end
end
