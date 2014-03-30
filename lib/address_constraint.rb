require 'BasicConstraint'

class AddressConstraint < BasicConstraint

	cattr_reader :street_name_length_max, :landmark_length_max

	@@street_name_length_max 	= 40

	@@landmark_length_max 		= 40


end