class Store::IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
    @categories = Category.all
    @category = Category.find(params[:category_id])
  end

  def create
	  @ingredient = Ingredient.new(category_id: params[:category_id])

    if @ingredient.save
  		redirect_to ingredient_path(@ingredient), notice: "+ ITEM ADDED"
  	else
  		render 'new'
  	end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:location_id, :category_id, :lifespan)
  end
end
