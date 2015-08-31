class Admin::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @category = Category.new
  end

  def new
    @category = Category.new(parent_id: params[:parent_id])
  end

  def create
    @category = Category.new(category_params,
      parent_id: category_params[:parent_id])

    if @category.save
      redirect_to admin_categories_path
    else
      redirect_to :back
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to admin_categories_path, notice: "Category Deleted"
  end

  private

  def category_params
    params.require(:category).permit(:parent_id,
                                     :name,
                                     :default_expiration)
  end
end
