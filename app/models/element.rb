class Element < ActiveRecord::Base
  attr_accessible :category, :description, :fixed_cost, :image, :link, :name, :tier, :variable_cost
end
