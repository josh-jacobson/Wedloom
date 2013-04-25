class AddFieldsToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :name, :string
    add_column :customers, :wedding_date, :date
    add_column :customers, :budget, :integer
    add_column :customers, :number_of_guests, :integer
  end
end
