class AddDescendantCountToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :descendant_count, :integer
  end
end
