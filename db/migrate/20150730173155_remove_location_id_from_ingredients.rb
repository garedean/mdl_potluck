class RemoveLocationIdFromIngredients < ActiveRecord::Migration
  def change
    remove_column :ingredients, :location_id, :integer
  end
end
