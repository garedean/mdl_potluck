class Store::CategoriesController < CategoriesController
	def show
	  @category = Category.find(params[:id])
	end
end
