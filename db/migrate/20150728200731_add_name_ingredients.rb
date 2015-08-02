class AddNameIngredients < ActiveRecord::Migration
  def change
  	add_column :ingredients, :name, :string
  end
end
