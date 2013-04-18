class Loomelement < ActiveRecord::Base
  attr_accessible :customer_id, :element_id, :notes, :inBudget
  belongs_to :customer
  belongs_to :element
end
