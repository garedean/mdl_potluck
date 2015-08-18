class Store::LocationsController < LocationsController
  def index
    @category = params[:category_id]
    @locations = Location.where(ancestry: nil).order(:name)
    @hide_no_location_option = true if params[:hide_no_location_option]
  end

  def show
    super
    @category = params[:category_id]
  end

  def edit
    super
  end

  def choose_expiration
    @category = Category.find(params[:category_id])
    @location = Location.find(params[:id]) if params[:id]
    @ingredient = Ingredient.new
  end
end
