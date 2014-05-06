require 'PropertyConstraint'
class PropertiesController < ApplicationController


  helper_method :propertyConstraint

  def show
    @property = Property.find(params[:id])
    @boolean_amenity = BooleanAmenity.find_by(id: @property.boolean_amenity_id)
    @integer_amenity = IntegerAmenity.find_by(id: @property.integer_amenity_id)
    @location = PropertyLocation.find_by(id: @property.property_location_id)
    @address = @property.address

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
