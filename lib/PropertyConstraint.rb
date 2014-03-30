require 'BasicConstraint'

class PropertyConstraint < BasicConstraint

	cattr_reader :property_types, :furnishing_types, :lease_types	

	#property_type 
	@@property_types = create_types [:pg, :rent, :lease]

	#furnishing
	@@furnishing_types = create_types [:no, :semi, :full ]

	#lease_type
	@@lease_types = create_types [:rent,:lease]

end