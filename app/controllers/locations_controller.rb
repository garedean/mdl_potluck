class LocationsController < ApplicationController
  def index
    @locations = Location.where(parent_id: nil)
  end

  def show
    @location = Location.find(params[:id])
    @sublocations = Location.where(parent_id: @location.id)
  end

  def edit
 	@ingredient = Ingredient.find(params[:ingredient_id])
 	@location = Location.find(params[:id])
  end

  def update
  	@location = Location.find(params[:id])
    if @location.update(location_params)
      flash[:notice] = "LOCATION UPDATED"
      redirect_to root_path
    else
      render :edit
    end
  end

  private

    def location_params
      params.require(:location).permit(:name)
    end
end
