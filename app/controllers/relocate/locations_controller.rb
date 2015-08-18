class Relocate::LocationsController < ApplicationController
  def index
    @ingredient = Ingredient.find(params[:ingredient_id]);
    @locations   = Location.all
  end

  def show
    @ingredient = Ingredient.find(params[:ingredient_id])
    @location = Location.find(params[:id])
    @sublocations = @location.children
  end
end
