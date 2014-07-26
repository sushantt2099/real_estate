require 'address_constraint'
require 'PropertyConstraint'
class AddressesController < ApplicationController
  include PropertiesHelper  
  def new
  	@address = current_property.build_address
  end

  def create
  	@address = current_property.build_address(address_params)
  	if @address.save
  		redirect_to current_property
  	else
  		@database_error = @address
  		render new_address_path
  	end

  end

  private 
  	def address_params
  		params.require(:address).permit(:street_name, :landmark, :latitude, :longitude, :property_id)
  	end

end
