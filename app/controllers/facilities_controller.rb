require 'FacilityConstraint'
class FacilitiesController < ApplicationController



	def new
		@facility = Facility.new
	end

	def create
		@facility = Facility.new(facility_params)
		if @facility.save

		else
			render new_facility_path
		end
	end

  private
  	def facility_params
  		params.require(:facility).permit(:gym, :bathroom, :ac, :swimming_pool, :lift, :parking)
  	end

end
