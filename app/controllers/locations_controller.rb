class LocationsController < ApplicationController
  def index
    @locations = Location.where(parent_id: nil)
  end

  def show
    @locations = Location.all
    @location = Location.find(params[:id])
    @sublocations = Location.where(parent_id: @location.id)
  end
end
