require 'BasicConstraint'

class PropertyConstraint < BasicConstraint

	cattr_reader :property_types, :furnishing_types, :lease_types	

	#property_type 
	@@property_types = create_types [:pg, :rent, :lease]

	#furnishing
	@@furnishing_types = create_types [:no, :semi, :full ]

	#lease_type
	@@lease_types = create_types [:rent,:lease]


	class << self 


		def property_types_max_value
			max_value_of_hash(@@property_types)
		end

		def furnishing_types_max_value
			max_value_of_hash(@@furnishing_types)
		end

		def lease_types_max_value
			max_value_of_hash(@@lease_types)
		end
	end

end