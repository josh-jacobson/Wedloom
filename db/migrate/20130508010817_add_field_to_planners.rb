class AddFieldToPlanners < ActiveRecord::Migration
  def change
  	add_column :planners, :image1, :string
    add_column :planners, :image2, :string
    add_column :planners, :image3, :string
    add_column :planners, :image4, :string
    add_column :planners, :image5, :string
    add_column :planners, :appointlet, :string
  end
end
