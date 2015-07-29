class IngredientsController < ApplicationController

  def index
  	@ingredients = Ingredient.all()
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
	@ingredient = Ingredient.new(ingredient_params)
  	if @ingredient.save
  		flash[:notice] = "You have added an ingredient"
  		redirect_to ingredients_path
  	else
  		render 'new'
  	end
  end

  private

  def ingredient_params
  	params.require(:ingredient).permit(:name)
  end

end