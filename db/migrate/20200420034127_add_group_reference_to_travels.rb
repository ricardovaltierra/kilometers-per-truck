class AddGroupReferenceToTravels < ActiveRecord::Migration[5.2]
  def change
    add_column :travels, :group_id, :integer, null: true
    add_foreign_key :travels, :groups
  end
end
