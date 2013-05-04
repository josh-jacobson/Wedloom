class Appointment < ActiveRecord::Base
  attr_accessible :customer_id, :planner_id, :appointment_time
  belongs_to :customer
  belongs_to :planner

  before_create :set_time_to_now
  def set_time_to_now
    self.appointment_time = Time.now
  end
end
