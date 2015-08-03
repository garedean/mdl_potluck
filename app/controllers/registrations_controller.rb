class RegistrationsController < Devise::RegistrationsController
  def create
    super

    # create and assign user a cart when they signup
    current_user.cart = Cart.create
  end
end
