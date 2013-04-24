class StaticPagesController < ApplicationController
  def home
  end

  def homeplanner
  end

  def about
  end

  def carousel
    @category = params[:category]
  end

  def inspiration
    @venues = Venue.paginate(:page => params[:page], :per_page => 15)
    @elements = Element.paginate(:page => params[:page], :per_page => 15)
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
