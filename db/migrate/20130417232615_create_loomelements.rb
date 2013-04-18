class CreateLoomelements < ActiveRecord::Migration
  def change
    create_table :loomelements do |t|
     	t.integer :customer_id
   		t.integer :element_id
   		t.string :notes
   		t.boolean :inBudget, :default => false

      	t.timestamps
    end
  end
end
