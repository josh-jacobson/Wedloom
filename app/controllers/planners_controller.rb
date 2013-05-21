class PlannersController < ApplicationController
	before_filter :authenticate_planner!, :only => [:edit]
  before_filter :authenticate_planner!, :only => [:update]
  before_filter :authenticate_planner!, :only => [:show]
  before_filter :authenticate_planner!, :only => [:add_element]
  before_filter :authenticate_planner!, :only => [:remove_element]
  
  def index
    @planners = Planner.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @planners }
    end
  end

  def edit
    if planner_signed_in?
      @planner = current_planner
    else
      @planner = Planner.find(params[:id])
    end
  end

  def update
    if planner_signed_in?
      @planner = current_planner
    else
      @planner = Planner.find(params[:id])
    end

    respond_to do |format|
      if @planner.update_attributes(params[:planner])
        format.html { redirect_to planners_path, notice: 'Your profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @planner.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    if planner_signed_in?
      @planner = current_planner
    else
      @planner = Planner.find(params[:id])
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @planner }
    end
  end

  def profile
    @planner = Planner.find(params[:id])
    @appointments = @planner.appointments
  end

  def add_element
    @planner = current_planner
    @planner.elements << Element.find(params[:id])
  end

  def remove_element
    @planner = current_planner
    @planner.elements.delete(Element.find(params[:id]))
    redirect_to loom_path
  end

end
