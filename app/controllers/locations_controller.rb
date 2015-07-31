class LocationsController < ApplicationController
  def index
    @locations = Location.where(parent_id: nil)
    @ingredient = Ingredient.find(params[:ingredient_id])
  end

  def show
    @locations = Location.all
    @location = Location.find(params[:id])
    @sublocations = Location.where(parent_id: @location.id)
    @ingredient = Ingredient.find(params[:ingredient_id])
  end

  def edit
 	@ingredient = Ingredient.find(params[:ingredient_id])
 	@location = Location.find(params[:id])
  end

  def update
  	@location = Location.find(params[:id])
    if @location.update(location_params)
      flash[:notice] = "location Updated"
      redirect_to post_path(@location.post_id)
    else
      render :edit
    end
  end

private
  def location_params
    params.require(:ingredient).permit(:location_id)
  end


end
