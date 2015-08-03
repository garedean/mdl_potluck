class DropLifespan < ActiveRecord::Migration
  def change
  	remove_column :ingredients, :lifespan
  end
end
