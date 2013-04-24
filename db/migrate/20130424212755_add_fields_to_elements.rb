class AddFieldsToElements < ActiveRecord::Migration
  def change
    add_column :elements, :capacity, :integer
    add_column :elements, :minimum, :integer
    add_column :elements, :tags, :string
  end
end
