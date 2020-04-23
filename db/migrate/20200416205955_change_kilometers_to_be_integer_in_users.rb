class ChangeKilometersToBeIntegerInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :travels, :kilometers, :integer USING kilometers::integer
  end
end
