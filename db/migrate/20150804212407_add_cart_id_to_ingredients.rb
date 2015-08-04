class AddCartIdToIngredients < ActiveRecord::Migration
  def change
    add_reference :ingredients, :cart, index: true, foreign_key: true
  end
end
