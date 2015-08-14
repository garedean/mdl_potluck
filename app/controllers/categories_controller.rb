class CategoriesController < ApplicationController
  def index
  	@categories = Category.where(ancestry: nil).order(:name)
  end

  def show
    @food_category = Category.find(params[:id])
    @subcategories = @food_category.children
  end
end
