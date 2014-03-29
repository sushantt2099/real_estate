require 'BasicConstraint'

class FacilityConstraint < BasicConstraint

	cattr_reader :parking_types
	#parking types
	@@parking_types = create_types [:no, :bike, :car, :both ]


	class << self

		def parking_types_max_value
			max_value_of_hash(@@parking_types)
		end

	end

end