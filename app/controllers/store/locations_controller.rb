class Store::LocationsController < LocationsController
  def index
    super
    @ingredient = Ingredient.find(params[:ingredient_id])
  end

  def show
    super
    @ingredient = Ingredient.find(params[:ingredient_id])
  end

  def edit
    super
  end
end
