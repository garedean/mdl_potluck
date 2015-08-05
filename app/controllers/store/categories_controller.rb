class Store::CategoriesController < ApplicationController
  def index
    @categories = Category.where(parent_id: nil)
  end

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @ingredients = Ingredient.all
    @items = Category.where(parent_id: @category.id)
  end
end
