class IngredientsController < ApplicationController
  # this action serves three resources: ingredients, location/:id/ingredients, category/:id/ingredients
  def index
    location = Location.find_by_id(params[:location_id])
    category = Category.find_by_id(params[:category_id])
    @resource = location || category

    resource_ingredients =
      if method = @resource
        method.ingredients.unused.order(:expiration_date)
      else
        Ingredient.unused.order(:expiration_date).all
      end

    cart_items = current_user.cart.ingredients
    @ingredients = (resource_ingredients - cart_items)
  end

  def new
    @ingredient = Ingredient.new
    @category = Category.find(params[:category_id])
  end

  def create
    expiration_date = Date.today + (ingredient_params[:expiration_date].to_i * 7)

    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      redirect_to ingredient_path(@ingredient, show_quick_add: true), notice: "Item Stored"
    else
      redirect_to :back, notice: "Expiration date required"
    end
  end

  def show
    @show_quick_add = true if params[:show_quick_add] == "true"
    @ingredient = Ingredient.find(params[:id])
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
      flash[:notice] = "Location Updated"
      # redirect_to store_path
      redirect_to ingredient_path(@ingredient)
    else
      render :edit
    end
  end

  def destroy
    ingredient = Ingredient.find(params[:id])
    ingredient.destroy

    redirect_to root_path, notice: "Item Deleted"
  end

  def expiring_soon
    @ingredients = Ingredient.expiring_soon
  end

  def unarranged
    @ingredients = Ingredient.all
  end

  def add_to_cart
    item_to_add = Ingredient.find(params[:id])
    item_to_add.update_descendants_count

    current_user.cart.add_item(item_to_add)
    redirect_to :back
  end

  def recentlylogged
    @ingredients = Ingredient.all
  end

  def remove_from_cart
    item_to_remove = Ingredient.find(params[:id])
    item_to_remove.update_descendants_count

    current_user.cart.remove_item(item_to_remove)
    flash[:notice] = "Item Removed"
    redirect_to :back
  end

  def add_another_same_location
    cloned_ingredient = Ingredient.find(params[:id])
    cloned_location = cloned_ingredient.location.try(:id)
    cloned_category = cloned_ingredient.category.id
    cloned_expiry   = cloned_ingredient.expiration_date

    new_ingredient = Ingredient.new(category_id: cloned_category,
                                    location_id: cloned_location,
                                    expiration_date: cloned_expiry)

    if new_ingredient.save
      redirect_to ingredient_path(new_ingredient, show_quick_add: true), notice: "One more stored in this location"
    else
      render 'new'
    end
  end

  def save_location
    ingredient = Ingredient.find(params[:ingredient_id])
    ingredient.update(location_id: params[:id])
    redirect_to ingredient_path(ingredient), notice: "Location Updated"
  end

  private

    def ingredient_params
    	params.require(:ingredient).permit(:location_id,
                                         :category_id,
                                         :quantity,
                                         :lifespan,
                                         :expiration_date)
    end
end
