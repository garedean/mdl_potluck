class RenameHasChildrenInCategories < ActiveRecord::Migration
  def change
    rename_column :categories, :has_children, :has_children?
  end
end
