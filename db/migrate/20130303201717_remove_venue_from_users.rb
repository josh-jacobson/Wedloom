class RemoveVenueFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :venue
  end

  def down
    add_column :users, :venue, :string
  end
end
