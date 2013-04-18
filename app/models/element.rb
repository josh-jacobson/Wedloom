class Element < ActiveRecord::Base
  attr_accessible :category, :description, :fixed_cost, :image, :link, :name, :tier, :variable_cost

  has_many :loomelements
  has_many :customers, :through => :loomelements
end
