class CartsController < ApplicationController
  def show
    @cart_items = Cart.first.ingredients
  end
end
