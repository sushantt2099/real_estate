require 'integer_amenity_constraint'
class IntegerAmenitiesController < ApplicationController
  include PropertiesHelper 
  include SessionsHelper
  before_action :signed_in_user

  
  def new
  	@amenity = IntegerAmenity.new
  end

  def create
  	params = amenity_params
  	@amenity = IntegerAmenity.new(params)
  	@same_amenity = IntegerAmenity.find_by(params)
  	if @same_amenity
  		@amenity = @same_amenity
  		update_current_property_and_redirect
  	else
  		if @amenity.save
  			update_current_property_and_redirect
  		else
  			render new_integer_amenity_path
  		end
  	end
  end

  private 

  	def amenity_params
  		params.require(:integer_amenity).permit(:bathroom, :ac, :tv, :cupboard, :bed)
  	end

  	def update_current_property_and_redirect
  		current_property.update(PropertyConstraint.row_integer_amenity_id => @amenity.id)
      redirect_to new_property_location_path
  	end
end
