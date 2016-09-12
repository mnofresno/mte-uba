class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.belongs_to :role, index: true, foreign_key: true
      t.belongs_to :taller, index: true, foreign_key: true
      t.belongs_to :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
