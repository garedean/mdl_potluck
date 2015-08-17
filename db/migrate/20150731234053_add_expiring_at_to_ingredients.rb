class AddExpiringAtToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :expiration_date, :date
  end
end
