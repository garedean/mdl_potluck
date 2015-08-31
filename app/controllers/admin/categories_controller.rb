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

    @category.default_expiration = 30 if category_params[:default_expiration].empty?

    if @category.save
      redirect_to admin_categories_path
    else
      redirect_to :back, notice: "Category name is required"
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to admin_categories_path, notice: "CATEGORY DELETED"
  end

  private

  def category_params
    params.require(:category).permit(:parent_id,
                                     :name,
                                     :default_expiration)
  end
end
