require 'property_location_constraint'
class PropertyLocationsController < ApplicationController
  def new
  	@location = PropertyLocation.new
  end

  def create
  	@location = PropertyLocation.new(property_location_params)
  	if @location.save
  		#render next page
  	else
  		@database_error = @location
  		render 'new'
  	end
  end


  private

  def property_location_params
  	params.require(:property_location).permit(:area, :city, :state, :country)
  end
end
