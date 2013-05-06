class CustomersController < ApplicationController
	before_filter :authenticate_customer!

  def show
    redirect_to loom_path
  end

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
    @customer.planners << Planner.find(params[:id])
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
    @elements = @customer.elements
    @appointments = @customer.appointments
  end
end
