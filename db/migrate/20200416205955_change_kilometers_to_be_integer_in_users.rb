class ChangeKilometersToBeIntegerInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :travels, :kilometers, 'integer USING CAST(kilometers AS integer)'
  end
end
