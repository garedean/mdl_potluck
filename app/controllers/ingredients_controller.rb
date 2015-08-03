class IngredientsController < ApplicationController

  def index
    location = Location.find(params[:location_id])
  	@ingredients = location.ingredients
  end

  def new
    @ingredient = Ingredient.new
    @categories = Category.all
    @category = Category.find(params[:category_id])
  end

  def create
	  @ingredient = Ingredient.new(ingredient_params)
  	@ingredient.save
    if @ingredient.save
  		flash[:notice] = "+ ITEM ADDED"
  		  redirect_to ingredient_path(@ingredient)
  	else
  		render 'new'
  	end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    @locations = Location.all
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
    @locations = Location.all
    @location = Location.find(params[:location_id])
    @sublocations = Location.where(parent_id: @location.id)
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.update(ingredient_params)
      flash[:notice] = "LOCATION SET"
      redirect_to root_path
    else
      render :edit
    end
  end

  def expiring_soon
    @ingredients = Ingredient.expiring_soon
  end

  def unarranged
    @ingredients = Ingredient.all
  end

  def add_to_cart
    item_to_add = Ingredient.find(params[:id])

    current_user.cart.add_item(item_to_add)
    redirect_to :back
  end

  def remove_from_cart
    item_to_remove = Ingredient.find(params[:id])

    current_user.cart.remove_item(item_to_remove)
    redirect_to :back
  end

  private

  def ingredient_params
  	params.require(:ingredient).permit(:location_id, :category_id, :quantity, :lifespan)
  end

end
