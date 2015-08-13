class Store::LocationsController < LocationsController
  def index
    super
    @category = params[:category_id]
    @locations = Location.where(ancestry: nil).order(:name)
  end

  def show
    super
    @category = params[:category_id]
  end

  def edit
    super
  end
end
