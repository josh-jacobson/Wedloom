class CreateAppointments < ActiveRecord::Migration
  	def change
    	create_table :appointments do |t|
	     	t.integer :customer_id
	   		t.integer :planner_id
	   		t.datetime :apointment_time

	      	t.timestamps
    	end
  	end
end
