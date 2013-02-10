class User < ActiveRecord::Base
  attr_accessible :food, :food_price_integer, :venue, :venue_price
end
