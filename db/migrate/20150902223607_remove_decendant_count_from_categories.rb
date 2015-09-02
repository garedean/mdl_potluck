class RemoveDecendantCountFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :descendant_count, :integer
  end
end
