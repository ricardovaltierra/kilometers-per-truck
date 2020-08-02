class DropTableGroupsTravels < ActiveRecord::Migration[5.2]
  def change
    drop_table :groups_travels
  end
end
