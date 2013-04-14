class CustomerController < ApplicationController
	before_filter :authenticate_customer!

  def add
    @customer = current_customer
    @customer.venues << Venue.find(params[:id])
  end

  def remove
    @customer = current_customer
    @customer.venues.delete(Venue.find(params[:id]))
  end

  def loom
    @customer = current_customer
    @venues = @customer.venues
    @venue_cost = (@venues.size == 0) ? 10000 : @venues.map(&:rental_cost).inject(0, &:+) / @venues.length + @venues.map(&:cost_per_plate).inject(0, &:+) *150/@venues.length
    @wedding_cost = @venue_cost / 0.4
  end

end