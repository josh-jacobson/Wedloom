class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.text :description
      t.string :link
      t.string :image
      t.string :supporting_images
      t.integer :capacity
      t.integer :rental_cost
      t.integer :cost_per_plate
      t.integer :minimum
      t.string :tier
      t.string :tags

      t.timestamps
    end
  end
end
