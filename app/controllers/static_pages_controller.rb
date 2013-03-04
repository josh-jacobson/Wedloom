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

  def inspiration
  end

  def canvas
  end

  def refine
  end
  
end
