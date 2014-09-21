require 'boolean_amenity_constraint'
class BooleanAmenitiesController < ApplicationController
  include PropertiesHelper
  include SessionsHelper
  before_action :signed_in_user


  def new
  	@amenity = BooleanAmenity.new
  end

  def create
  	params = amenity_params
  	@same_amenity = BooleanAmenity.find_by(params)
  	@amenity = BooleanAmenity.new(amenity_params)
  	if @same_amenity
  		@amenity = @same_amenity
      update_amenity_and_redirect_to_property_location
  	else
  		if @amenity.save
  			update_amenity_and_redirect_to_property_location
  		else
  			render new_boolean_amenity_path
  		end
  	end
  end

  private 

	  def amenity_params
	  	params.require(:boolean_amenities).permit(:dining_table, :fridge, 
	  									:sofa, :gas_pipe, :stove, :gym, :swimming_pool, 
	  									:lift, :washing_machine, :microwave, :servent_room)
	  end

	  def update_amenity_and_redirect_to_property_location
	  	current_property.update(PropertyConstraint.row_boolean_amenity_id => @amenity.id)
	  	redirect_to new_integer_amenity_path
	  end
end
