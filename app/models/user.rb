class User < ActiveRecord::Base
  attr_accessible :food, :venue, :flowers, :entertainment, :photographer, :dress
  has_and_belongs_to_many :venues
end
