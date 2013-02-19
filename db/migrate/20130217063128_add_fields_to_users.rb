class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :flowers, :string
    add_column :users, :entertainment, :string
    add_column :users, :photographer, :string
    add_column :users, :dress, :string
  end
end
