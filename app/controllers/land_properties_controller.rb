require 'land_property_constraint'
require 'PropertyConstraint'
class LandPropertiesController < ApplicationController

  include SessionsHelper
  before_action :signed_in_user

  def new
  	@property = LandProperty.new
  	@photo = @property.photos.build
  end

  def create
  	@property = LandProperty.new(property_prams)
    @property.interested_people_count = 0;
  	if @property.save
      #save the current poperty id in the cookie
      params[:photos]['photo'].each do |p|
          @photo = @property.photos.create!(:photo => p, :land_property_id => @property.id)
      end
      cookies.delete PropertyConstraint.cookie_current_property
      cookies.permanent[LandPropertyConstraint.cookie_current_property] = @property.id
      redirect_to new_property_location_path
    else
      @database_error = @property
      render new_land_property_path
    end
  end



  private
		def property_prams
			params.require(:land_property).permit(:description,  :lease_type, :price,
                                        :area, :available_from,:water_supply)
		end

end
