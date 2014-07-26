require 'BasicConstraint'

class InterestedPeopleConstraint < BasicConstraint

	cattr_reader :email_address_length_max, :phone_number_length_max, :status_types

	@@email_address_length_max 	= 30
	@@phone_number_length_max 	= 15

	@@status_types = create_types [:active, :inactive]

end