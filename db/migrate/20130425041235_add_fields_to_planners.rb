class AddFieldsToPlanners < ActiveRecord::Migration
  def change
    add_column :planners, :name, :string
    add_column :planners, :description, :text
    add_column :planners, :photo, :string
    add_column :planners, :website, :string
  end
end
