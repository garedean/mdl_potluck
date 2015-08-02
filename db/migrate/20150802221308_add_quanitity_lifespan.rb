class AddQuanitityLifespan < ActiveRecord::Migration
  def change
  	add_column :ingredients, :quantity, :integer
  	add_column :ingredients, :lifespan, :integer
  end
end
