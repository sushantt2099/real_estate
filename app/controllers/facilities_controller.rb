require 'FacilitiesConstraint'
class FacilitiesController < ApplicationController

	@@facilitiesConstraint = FacilitiesConstraint.new

	helper_method :facilitiesConstraint

	def facilitiesConstraint
		@@facilitiesConstraint
	end

	def new
		@facility = Facility.new
	end

	def create
		@facility = Facility.new(facility_params)
		@facility.save
		render 'new'
	end

  private
  	def facility_params
  		params.require(:facility).permit(:gym, :bathroom, :ac, :swimming_pool, :lift, :parking)
  	end

end
