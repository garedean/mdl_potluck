class RemoveIngredientIdFromCarts < ActiveRecord::Migration
  def change
    remove_reference :carts, :ingredient, index: true, foreign_key: true
  end
end
