class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.text :content
      t.string :category

      t.timestamps
    end
  end
end
