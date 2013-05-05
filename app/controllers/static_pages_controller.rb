class StaticPagesController < ApplicationController
  def home
  end

  def homeplanner
  end

  def index
    @articles = Article.order(:created_at).page(params[:page])

    respond_to do |format|
      format.js
      format.html # index.html.erb
      
    end
  end

  def refine
  end

  def carlene
  end

  def signup
  end

  def venuesboard
    @elements = @venues
    redirect_to inspiration_path
  end

end
