class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def budget
  end

  def carousel
    @category = params[:category]
  end

  def food_carousel
  end

  def canvas
  end
end
