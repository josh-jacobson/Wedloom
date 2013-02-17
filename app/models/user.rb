class User < ActiveRecord::Base
  attr_accessible :food, :venue, :flowers, :entertainment, :photographer, :dress
end
