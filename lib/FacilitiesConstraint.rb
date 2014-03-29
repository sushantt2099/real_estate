require 'BasicConstraint'

class FacilitiesConstraint < BasicConstraint

	cattar_reader :parking_types
	#parking types
	@@parking_types = { no: 0, bike: 1, car: 2, both: 3 }


	class << self

		def parking_types_max
			max_value_of_hash(@@parkingTypes)
		end

	end

end