class CreateJoinTableTravelGroup < ActiveRecord::Migration[5.2]
  def change
    create_join_table :travels, :groups do |t|
      t.index %i[travel_id group_id]
      t.index %i[group_id travel_id]

      t.timestamps
    end
  end
end
