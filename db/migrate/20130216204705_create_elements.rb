class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.string :category
      t.string :name
      t.integer :fixed_cost
      t.integer :variable_cost
      t.text :description
      t.string :image
      t.string :link
      t.integer :tier

      t.timestamps
    end
  end
end
