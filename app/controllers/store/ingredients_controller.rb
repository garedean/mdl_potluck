class Store::IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
    @categories = Category.all
    @category = Category.find(params[:category_id])
  end

  def create
    @category = Category.find(params[:category_id])
	  @ingredient = Ingredient.new(category_id: params[:category_id])

    if @ingredient.save
      redirect_to store_ingredient_path(@ingredient), notice: "Item added!"
  	else
  		render 'new'
  	end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:location_id, :category_id, :lifespan)
  end
end
