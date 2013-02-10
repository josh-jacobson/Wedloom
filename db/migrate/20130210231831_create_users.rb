class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :venue
      t.integer :venue_price
      t.string :food
      t.string :food_price_integer

      t.timestamps
    end
  end
end
