class Venue < ActiveRecord::Base
  attr_accessible :capacity, :cost_per_plate, :description, :image, :link, :minimum, :name, :rental_cost, :supporting_images, :tags, :tier
end
