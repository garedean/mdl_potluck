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

    if @ingredient.save
      redirect_to store_ingredient_path(@ingredient), notice: "+ITEM ADDED"
  	else
  		render 'new'
  	end
  end

  def add_with_location
    category = Category.find(params[:id])
    @ingredient = Ingredient.new(category_id: category.id)

    if @ingredient.save
      redirect_to store_ingredient_locations_path(@ingredient), notice: "+ITEM ADDED!"
    else
      render 'new'
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:location_id, :category_id, :lifespan)
  end
end
