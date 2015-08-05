class IngredientsController < ApplicationController
  # this action serves three resources: ingredients, location/:id/ingredients, category/:id/ingredients
  def index
    location = Location.find_by_id(params[:location_id])
    category = Category.find_by_id(params[:category_id])
    cart_items = current_user.cart.ingredients

    resource_ingredients =
      if method = (location || category)
        method.ingredients
      else
        Ingredient.all
      end

  	@ingredients = resource_ingredients - cart_items
  end

  def new
    @ingredient = Ingredient.new
    @category = Category.find(params[:category_id])
  end

  def create
    @ingredient = Ingredient.new(category_id: params[:category_id])

    if @ingredient.save
      redirect_to :back, notice: "Item added!"
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
      flash[:notice] = "LOCATION SAVED"
      redirect_to store_path
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
    flash[:notice] = "ADDED TO CART"
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
