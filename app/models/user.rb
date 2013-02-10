class User < ActiveRecord::Base
  attr_accessible :food, :food_price, :venue, :venue_price
end
