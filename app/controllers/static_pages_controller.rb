class StaticPagesController < ApplicationController
  def admin_main
  	@ingredients = Ingredient.all()
  	@categories = Category.all()
  	@locations = Location.all()
  	@users = User.all()
  end

  def activate
  	@user = User.find(params[:id])
  	if @user.update_attribute(approved: true)
  	  redirect_to "something"
  	else
  	  render "something"
  	end
  end

  def cart_summaries
    @ingredients = Ingredient.all()
  end

  def home
    @categories = Category.where(ancestry: nil).order(:name)
    @locations = Location.where(ancestry: nil).order(:name)
  end
end
