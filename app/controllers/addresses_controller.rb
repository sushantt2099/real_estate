require 'address_constraint'
require 'PropertyConstraint'
class AddressesController < ApplicationController
  include PropertiesHelper  
  def new
  	@address = current_property.build_address
  end

  def create
  	@address = Address.new(address_params)
  	if @address.save
  		redirect_to new_property_path
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
