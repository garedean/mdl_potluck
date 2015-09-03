class AddIndexToIngredientsExpirationDate < ActiveRecord::Migration
  def change
    add_index :ingredients, :expiration_date
  end
end
