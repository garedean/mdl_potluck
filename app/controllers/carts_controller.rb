class CartsController < ApplicationController
  def show
    #session[:previous_page] ||= request.env['HTTP_REFERER']
    @cart_items = current_user.cart.ingredients
  end

  def empty_cart
    remove_cart_items
    redirect_to :back, notice: "Cart emptied!"
  end

  def use_all_items
    current_user.cart.ingredients.each do |ingredient|
      ingredient.update(used_on: Time.now)
    end

    remove_cart_items
    redirect_to :back, notice: "Cart items used"
  end

  private

  def remove_cart_items
    current_user.cart.ingredients.delete_all
  end
end
