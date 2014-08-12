require 'constraint/search_constraint'

class SearchPagesController < ApplicationController

	include PropertiesHelper
	include SearchPagesHelper
 
	def search
		@condition = search_param[:conditions]||{}
		logger.info "permitied #{@condition}"
		@properties = apply_condition
	end

	private
		def search_param
			logger.info params
			params.permit(conditions: [:price_range, bedroom: [], area: []])
			
		end
  
end
