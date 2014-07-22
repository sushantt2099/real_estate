class SearchPagesController < ApplicationController

	include PropertiesHelper
 
	def show
		@properties = Property.all
	end
  
end
