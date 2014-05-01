require 'FacilityConstraint'
class FacilitiesController < ApplicationController
	include PropertiesHelper

	def new
		@facility = Facility.new
	end

	def create
		params = facility_params
		@facility = Facility.new(params)
		@same_facility = Facility.find_by(params)
		if @same_facility
			@facility = @same_facility
			redirect_to_property_location_and_update_property
		else
			if @facility.save
				redirect_to_property_location_and_update_property
			else
				render new_facility_path
			end
			
		end
		
	end

  private
  	def facility_params
  		params.require(:facility).permit(:gym, :bathroom, :ac, :swimming_pool, :lift, :parking)
  	end

  	def redirect_to_property_location_and_update_property
    	current_property.update(PropertyConstraint.row_facility_id => @facility.id)
    	redirect_to new_property_location_path
  	end

end
