class IngredientsController < ApplicationController

  def index
  	@ingredients = Ingredient.all()
  end

  def new
    @ingredient = Ingredient.new
    @categories = Category.all
    @category = Category.find(params[:category_id])
  end

  def create
	  @ingredient = Ingredient.new(ingredient_params)
  	if @ingredient.save
  		flash[:notice] = "+ NEW ITEM ADDED"
  		redirect_to ingredient_locations_path(@ingredient)
  	else
  		render 'new'
  	end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def expiring_soon
    # @ingredients = Ingredient.order(expiring_at: :asc).limit(50)
    @ingredients = Ingredient.expiring_soon
  end

  private

  def ingredient_params
  	params.require(:ingredient).permit()
  end

end
