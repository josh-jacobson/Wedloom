# == Schema Information
#
# Table name: budget_elements
#
#  id         :integer         not null, primary key
#  element    :string(255)
#  selection  :string(255)
#  price      :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class BudgetElement < ActiveRecord::Base
  attr_accessible :venue_name, :venue_price, :catering_name, :catering_price, :flowers_name, :flowers_price, :catering_price
end