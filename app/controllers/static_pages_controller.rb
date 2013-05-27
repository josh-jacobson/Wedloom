class StaticPagesController < ApplicationController
  def home
  end

  def refine
  end

  def signup
  end

  def budget_packages
  end

  def timeline_packages
  end

  def vendor_packages
  end

  def venuesboard
    @elements = @venues
    redirect_to inspiration_path
  end

  def get_started
  end

end
