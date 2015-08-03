class CartsController < ApplicationController
  def show
    # if user doesn't have cart, create and assign one to them
    current_user.cart = Cart.create unless current_user.cart
    @cart_items = current_user.cart.ingredients
  end
end
