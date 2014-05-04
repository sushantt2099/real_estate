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

  def index
    @properties = Property.all
  end

  def create 
  	@property = Property.new(property_prams)
    @property.interested_people_count = 0;
  	if @property.save
      #save the current poperty id in the cookie
      cookies.permanent[PropertyConstraint.cookie_current_property] = @property.id
      redirect_to new_boolean_amenity_path
    else
      @database_error = @property
      render new_property_path
    end
  end

	private
		def property_prams
			params.require(:property).permit(:property_type, :rent, :deposit, :furnishing, :lease_type, 
                                        :build_area, :available_from, :power_backup)
		end
end
