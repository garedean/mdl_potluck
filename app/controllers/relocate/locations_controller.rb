class Relocate::LocationsController < Store::LocationsController
  def index
    super
    @ingredient = params[:ingredient_id]
  end

  def show
    @ingredient = Ingredient.find(params[:ingredient_id])
    @location = Location.find(params[:id])
    @sublocations = @location.children
  end
end
