class Venue < ActiveRecord::Base
  attr_accessible :capacity, :cost_per_plate, :description, :image, :link, :minimum, :name, :rental_cost, :supporting_images, :tags, :tier
  has_and_belongs_to_many :users
  has_and_belongs_to_many :customers
end
