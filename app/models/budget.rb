class Budget < ActiveRecord::Base
	attr_accessible :venue, :venue_price, :food, :food_price
end
