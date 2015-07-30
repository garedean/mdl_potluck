class CategoriesController < ApplicationController
  def index
  	@categories = Category.where(parent_id: nil)
  end

  def show
  	@categories = Category.all
    @category = Category.find(params[:id])
    @items = Category.where(parent_id: @category.id)
  end
end
