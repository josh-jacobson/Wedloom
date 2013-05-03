class CustomersController < ApplicationController
	before_filter :authenticate_customer!

  def edit
    @customer = current_customer
  end
  def update
    @customer = current_customer

    respond_to do |format|
      if @customer.update_attributes(params[:customer])
        format.html { redirect_to loom_path, notice: 'Your profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def schedule_appointment
    @customer = current_customer
    @customer.appointments << Planner.find(1)
    redirect_to loom_path
  end

  def add_element
    @customer = current_customer
    @customer.elements << Element.find(params[:id])
  end

  def remove_element
    @customer = current_customer
    @customer.elements.delete(Element.find(params[:id]))
    redirect_to loom_path
  end

  def loom
    @customer = current_customer
    @venues = @customer.venues
    @elements = @customer.elements
    @venue_cost = (@venues.size == 0) ? 10000 : @venues.map(&:rental_cost).inject(0, &:+) / @venues.length + @venues.map(&:cost_per_plate).inject(0, &:+) *150/@venues.length
    @wedding_cost = @venue_cost / 0.4
  end

end
