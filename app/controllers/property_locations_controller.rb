require 'property_location_constraint'
require 'PropertyConstraint'
class PropertyLocationsController < ApplicationController
  include PropertiesHelper
  include SessionsHelper
  before_action :signed_in_user
  

  def new
  	@location = PropertyLocation.new
  end

  def create
    params = property_location_params
  	@location = PropertyLocation.new(params)
    @same_location = PropertyLocation.find_by(params)
    if @same_location
      @location = @same_location
      redirect_to_address_and_update_property
    else
    	if @location.save
    		redirect_to_address_and_update_property
    	else
    		@database_error = @location
    		render 'new'
    	end
    end
  end


  private

  def property_location_params
  	params.require(:property_location).permit(:area, :city, :state, :country)
  end

  def redirect_to_address_and_update_property
    current_property.update(PropertyConstraint.row_property_location_id => @location.id)
    redirect_to new_address_path
    
  end
end
