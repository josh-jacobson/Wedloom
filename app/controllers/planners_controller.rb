class PlannersController < ApplicationController
	before_filter :authenticate_planner!

  def profile
    @planner = current_planner
  end
  
  def edit
    @planner = current_planner
  end
  def update
    @planner = current_planner

    respond_to do |format|
      if @planner.update_attributes(params[:planner])
        format.html { redirect_to profile_path, notice: 'Your profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @planner.errors, status: :unprocessable_entity }
      end
    end
  end

  def add
    @planner = current_planner
    @planner.venues << Venue.find(params[:id])
  end

  def remove
    @planner = current_planner
    @planner.venues.delete(Venue.find(params[:id]))
    redirect_to loom_path
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
