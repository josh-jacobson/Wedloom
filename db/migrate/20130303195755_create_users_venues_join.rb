class CreateUsersVenuesJoin < ActiveRecord::Migration
  def up
  	create_table 'users_venues', :id => false do |t|
  		t.column 'user_id', :integer
  		t.column 'venue_id', :integer

  	end
  end

  def down
  	drop_table 'users_venues'
  end
end
