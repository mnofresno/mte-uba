class CreateNotareparacions < ActiveRecord::Migration
  def change
    create_table :notareparacions do |t|

      t.timestamps null: false
    end
  end
end
