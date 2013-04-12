class StaticPagesController < ApplicationController
  def home
  end

  def about
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
  
end
