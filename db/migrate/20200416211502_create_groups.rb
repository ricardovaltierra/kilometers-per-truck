class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end
    add_reference :groups, :user, foreign_key: true
  end
end
