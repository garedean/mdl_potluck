class Store::IngredientsController < ApplicationController
  def new
    @food_item = Category.find(params[:category_id])
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    @locations = Location.all()
  end


  def create
    @category = Category.find(params[:category_id])
    @ingredient = Ingredient.new(category_id: params[:category_id])
    @ingredient.save

    if params[:create_and_place]
      redirect_to store_ingredient_locations_path(@ingredient), notice: "+ITEM ADDED"
    else
      redirect_to ingredient_path(@ingredient, unlocated: true), notice: "+ITEM ADDED"
    end

  end

  def add_with_location
    category = Category.find(params[:id])
    @ingredient = Ingredient.new(category_id: category.id)

    if @ingredient.save
      redirect_to store_ingredient_locations_path(@ingredient), notice: "+ITEM ADDED"
    else
      render 'new'
    end
  end

  def save_location
    ingredient = Ingredient.find(params[:id])
    ingredient.update(location_id: params[:location_id])
    redirect_to ingredient_path(ingredient, show_quick_add: true)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:location_id, :category_id, :lifespan)
  end
end
