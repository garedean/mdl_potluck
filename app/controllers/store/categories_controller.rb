class Store::CategoriesController < CategoriesController
  def review
    @food_item = Category.find(params[:id])
  end

  def choose_expiration
    @category = Category.find(params[:id])
    @location = Location.find(params[:location_id]) if params[:location_id]
    @ingredient = Ingredient.new
  end
end
