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
    @venues = Element.where(:category => "Venue").paginate(:page => params[:page], :per_page => 5)
    @dresses = Element.where(:category => "Dress").paginate(:page => params[:page], :per_page => 5)
    @invitations = Element.where(:category => "Invitations").paginate(:page => params[:page], :per_page => 5)
    @flowers = Element.where(:category => "Floral/Decor").paginate(:page => params[:page], :per_page => 5)
    @style = Element.where(:category => "Style").paginate(:page => params[:page], :per_page => 5)

    if params[:category] == "venues"
      @elements = @venues 
    elsif params[:category] == "dresses"
      @elements = @dresses
    elsif params[:category] == "invitations"
      @elements = @invitations
    elsif params[:category] == "flowers"
      @elements = @flowers
    elsif params[:category] == "style"
      @elements = @style
    else
      @elements = @venues
    end

  end

  def canvas
  end

  def refine
  end

  def planner
  end

  def signup
  end

  def venuesboard
    @elements = @venues
    redirect_to inspiration_path
  end

end
