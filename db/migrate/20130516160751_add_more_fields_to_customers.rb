class AddMoreFieldsToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :wedding_city, :string
    add_column :customers, :booked_venue, :boolean
    add_column :customers, :booked_catering, :boolean
    add_column :customers, :booked_photographer, :boolean
    add_column :customers, :booked_florist, :boolean
    add_column :customers, :booked_entertainment, :boolean
    add_column :customers, :more_info, :text
  end
end
