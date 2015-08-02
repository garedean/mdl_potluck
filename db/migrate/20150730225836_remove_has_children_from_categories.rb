class RemoveHasChildrenFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :has_children?
  end
end
