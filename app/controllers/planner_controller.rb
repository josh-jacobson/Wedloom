class PlannerController < ApplicationController
	before_filter :authenticate_planner!

  def profile
    @planner = current_planner
  end
  
  def add
    @planner = current_planner
    @planner.venues << Venue.find(params[:id])
  end

  def remove
    @planner = current_planner
    @planner.venues.delete(Venue.find(params[:id]))
    redirect_to loom_path
  end

  def add_element
    @planner = current_planner
    @planner.elements << Element.find(params[:id])
  end

  def remove_element
    @planner = current_planner
    @planner.elements.delete(Element.find(params[:id]))
    redirect_to loom_path
  end

  def loom
    @planner = current_planner
    @venues = @planner.venues
    @elements = @planner.elements
    @venue_cost = (@venues.size == 0) ? 10000 : @venues.map(&:rental_cost).inject(0, &:+) / @venues.length + @venues.map(&:cost_per_plate).inject(0, &:+) *150/@venues.length
    @wedding_cost = @venue_cost / 0.4
  end

end
