class SearchPagesController < ApplicationController

	include PropertiesHelper
 
	def search
		@properties = Property.all
	end
  
end
