class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(customer)
    current_customer
  end

  def after_sign_in_path_for(planner)
    current_planner
  end
end
