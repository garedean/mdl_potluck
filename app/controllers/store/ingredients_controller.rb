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
    @location = Location.find(params[:id]) if params[:id]
    @ingredient = Ingredient.new(category_id: params[:category_id])
    @ingredient.save

    redirect_to ingredient_path(@ingredient, show_quick_add: true), notice: "+ITEM ADDED"
  end

  def add_with_location
    category = Category.find(params[:id])
    location_id = params[:location_id].to_s
    @ingredient = Ingredient.new(category_id: category.id, location_id: location_id)

    if @ingredient.save
      redirect_to ingredient_path(@ingredient, show_quick_add: true), notice: "+ITEM ADDED"
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
