class AddCurrentToMembership < ActiveRecord::Migration
  def change
    add_column :memberships, :current, :boolean
  end
end
