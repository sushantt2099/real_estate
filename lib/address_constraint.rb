require 'BasicConstraint'

class AddressConstraint < BasicConstraint

	cattr_reader :street_name_length_max, :landmark_length_max, :PAGE_TITLE, :PAGE_HEADER, :SUBMIT_BUTTON,
					:LABEL_STREET_NAME, :LABEL_LANDMARK, :LABEL_LOCATION_LATITUDE, :LABEL_LOCATION_LONGITUDE

	@@street_name_length_max 	= 40

	@@landmark_length_max 		= 40

	@@PAGE_TITLE				= "Mention Address"

	@@PAGE_HEADER				= "Mention Address"

	@@SUBMIT_BUTTON				= "Add Address"

	@@LABEL_STREET_NAME			= "street_name"

	@@LABEL_LANDMARK			= :landmark

	@@LABEL_LOCATION_LATITUDE	= :latitude

	@@LABEL_LOCATION_LONGITUDE	= :longitude
end