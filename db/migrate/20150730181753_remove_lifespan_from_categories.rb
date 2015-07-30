class RemoveLifespanFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :lifespan, :integer
  end
end
