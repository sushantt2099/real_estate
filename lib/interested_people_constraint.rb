require 'BasicConstraint'

class InterestedPeopleConstraint < BasicConstraint

	cattr_reader :email_address_length_max, :phone_number_length_max, :email_address_format_regex

	@@email_address_length_max 	= 30
	@@phone_number_length_max 	= 15

	@@email_address_format_regex = 

end