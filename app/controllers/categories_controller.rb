class CategoriesController < ApplicationController
  def index
  	@food_categories = Category.where(parent_id: nil)
  end

  def show
  	
    @food_category = Category.find(params[:id])
    @food_category_children = Category.where(parent_id: @food_category.id)
  end
end
