class Store::CategoriesController < CategoriesController
  def review
    @food_item = Category.find(params[:id])
  end
end
