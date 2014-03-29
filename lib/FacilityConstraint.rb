require 'BasicConstraint'

class FacilityConstraint < BasicConstraint

	cattr_reader :parking_types
	#parking types
	@@parking_types = create_types [:no, :bike, :car, :both ]

end