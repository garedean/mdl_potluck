class Admin::LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to :back, notice: "Location deleted!"
  end

  def new
    @location = Location.new(parent_id: params[:parent_id])
  end

  def create
    @location = Location.new(location_params)
    @location.save
    redirect_to admin_locations_path
  end

  private

  def location_params
    params.require(:location).permit(:parent_id, :name)
  end
end
