class CreateTravels < ActiveRecord::Migration[5.2]
  def change
    create_table :travels do |t|
      t.string :name
      t.string :kilometers

      t.timestamps
    end
    add_reference :travels, :user, foreign_key: true
  end
end
