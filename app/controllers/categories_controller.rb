class CategoriesController < ApplicationController
  def show
    @food_category = Category.find(params[:id])
    @food_category_children = @food_category.children
  end
end
