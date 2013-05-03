class Appointment < ActiveRecord::Base
  attr_accessible :customer_id, :planner_id, :appointment_time
  belongs_to :customer
  belongs_to :planner
end
