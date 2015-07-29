class LocationsController < ApplicationController

  def new
  	@location = Location.new()
  end

  def index
  	@locations = Location.all
  end

  def create
  	@location = Location.new(location_params)
  	if @location.save
      flash[:notice] = "New location was added!"
      redirect_to locations_path
    else
      render 'new'
    end
  end

  private

  def location_params
  	params.require(:location).permit(:name)
  end

end