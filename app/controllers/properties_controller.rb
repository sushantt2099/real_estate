require 'PropertyConstraint'
class PropertiesController < ApplicationController

  @@propertyConstraint = PropertyConstraint.new

  helper_method :propertyConstraint

  def propertyConstraint
    @@propertyConstraint
  end
  
  def new
  	@property = Property.new
  end

  def create
  	@property = Property.new(property_prams)
  	render 'new'
  end

  def add 
  	@property = Property.new(property_prams)
    @property.interested_people_count = 0;
  	@property.save
  	render 'new'
  end

	private
		def property_prams
			params.require(:property).permit(:property_type, :bathroom, :rent, :deposit, :furnishing, :lease_type, :build_area, :available_from )
		end
end
