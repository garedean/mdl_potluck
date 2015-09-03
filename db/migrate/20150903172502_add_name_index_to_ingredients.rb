class AddNameIndexToIngredients < ActiveRecord::Migration
  def change
    add_index :ingredients, :category_id
    add_index :categories, :name
  end
end
