class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def add
    @user = User.find(1)
    @user.venues << Venue.find(params[:id])
  end

  def budget
  end

  def carousel
    @category = params[:category]
  end

  def inspiration
    @user = User.find(1)
    @venues = Venue.all
  end

  def canvas
  end

  def refine
  end

  def planner
  end
  
end
