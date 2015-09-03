class AddDescendantsCount < ActiveRecord::Migration
  def change
    add_column :categories, :descendants_count, :integer, default: 0
    add_column :locations, :descendants_count, :integer, default: 0
  end
end
