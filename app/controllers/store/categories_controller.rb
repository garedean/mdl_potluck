class Store::CategoriesController < CategoriesController
  def review
    @food_item = Category.find(params[:id])
  end

  def add_with_location
    category = Category.find(params[:id])
    @ingredient = Ingredient.new(category_id: category.id)

    if @ingredient.save
      redirect_to store_ingredient_locations_path(@ingredient), notice: "Item added!"
    else
      render 'new'
    end
  end
end
