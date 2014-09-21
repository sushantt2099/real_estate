require 'constraint/search_constraint'
require 'property_location_constraint'

class SearchPagesController < ApplicationController

	include PropertiesHelper
	include SearchPagesHelper
	include SessionsHelper
	before_action :signed_in_user 
	
	def search
		@condition = search_param[:conditions]||{}
		logger.info "permitied #{@condition}"
		@properties = apply_condition
	end

	private
		def search_param
			logger.info params
			params.permit(conditions: [:price_range, bedroom: [], area: [], lease_types: []])
			
		end
  
end
