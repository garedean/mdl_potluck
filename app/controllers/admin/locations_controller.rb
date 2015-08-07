class Admin::LocationsController < ApplicationController
  def index
    @locations = Location.all
    @location = Location.new
  end

  def new
    @location = Location.new(parent_id: params[:parent_id])
  end

  def create
    @location = Location.new(location_params, parent_id: location_params[:parent_id])
    binding.pry
    @location.save
    redirect_to admin_locations_path
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to admin_locations_path, notice: "Location deleted!"
  end

  private

  def location_params
    params.require(:location).permit(:parent_id, :name)
  end
end
