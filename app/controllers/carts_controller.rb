class CartsController < ApplicationController
  def show
    @cart_items = current_user.cart.ingredients
  end

  def empty_cart
    remove_cart_items
    redirect_to :back, notice: "Cart Emptied"
  end

  def use_all_items
    current_user.cart.ingredients.each do |ingredient|
      ingredient.update(used_on: Time.now)
    end

    remove_cart_items
    redirect_to :back , notice: "Items Claimed"
  end
  
  private

  def remove_cart_items
    current_user.cart.ingredients.delete_all
  end
end
