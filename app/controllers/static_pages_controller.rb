class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def add
    before_filter :authenticate_customer!
    @customer = current_customer
    @customer.venues << Venue.find(params[:id])
  end

  def remove
    before_filter :authenticate_customer!
    @customer = current_customer
    @customer.venues.delete(Venue.find(params[:id]))
  end

  def loom
    before_filter :authenticate_customer!
    @customer = current_customer
    @venues = @customer.venues
    @venue_cost = (@venues.size == 0) ? 10000 : @venues.map(&:rental_cost).inject(0, &:+) / @venues.length + @venues.map(&:cost_per_plate).inject(0, &:+) *150/@venues.length
    @wedding_cost = @venue_cost / 0.4
  end

  def carousel
    @category = params[:category]
  end

  def inspiration
    @user = User.find(1)
    @venues = Venue.all
    @elements = Element.all
  end

  def canvas
  end

  def refine
  end

  def planner
  end

  def signup
  end

end
