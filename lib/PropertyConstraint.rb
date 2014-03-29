require 'BasicConstraint'

class PropertyConstraint < BasicConstraint

	cattr_reader :property_types, :furnishing_types, :lease_types	

	#property_type 
	@@property_types = { pg: 0, rent: 1, lease: 2}

	#furnishing
	@@furnishing_types = { no: 0, semi: 1, full: 2 }

	#lease_type
	@@lease_types = { rent: 0, lease: 1 }


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