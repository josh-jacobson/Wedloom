class RemoveFieldsFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :venue_price
    remove_column :users, :food_price
  end

  def down
    add_column :users, :food_price, :integer
    add_column :users, :venue_price, :integer
  end
end
