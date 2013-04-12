class CreateCustomersVenuesJoin < ActiveRecord::Migration
  def up
  	create_table 'customers_venues', :id => false do |t|
  		t.column 'customer_id', :integer
  		t.column 'venue_id', :integer

  	end
  end

  def down
  	drop_table 'customers_venues'
  end
end
