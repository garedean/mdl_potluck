class AddExpiringAtToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :expiring_at, :date
  end
end
