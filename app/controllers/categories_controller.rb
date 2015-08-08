class CategoriesController < ApplicationController
  def index
  	@food_categories = Category.where(ancestry: nil)
  end

  def show
    @food_category = Category.find(params[:id])
    @food_category_children = @food_category.children
  end
end
