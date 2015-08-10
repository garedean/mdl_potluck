class Relocate::IngredientsController < ApplicationController
  def change_location
    ingredient = Ingredient.find(params[:id])
    ingredient.update(location_id: params[:location_id])
    flash[:notice] = "LOCATION SET"
    redirect_to ingredient_path(ingredient)
  end
end
