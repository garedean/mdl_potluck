class AdminController < ApplicationController
  before_filter :authenticate_user!, except: [:home]

  def cart_summaries
    @ingredients = Ingredient.all()
  end

  def users
    @users = User.all()
  end

  def expired_summary
    @ingredients = Ingredient.all()
  end

  def inventory_summaries
    @ingredients = Ingredient.all()
  end


end
