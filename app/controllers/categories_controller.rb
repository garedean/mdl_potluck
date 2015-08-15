class CategoriesController < ApplicationController

  def index
  	@categories = Category.where(ancestry: nil).order(:name)
  end

  def show
    @category = Category.find(params[:id])
  end
end
