require 'BasicConstraint'

class FacilityConstraint < BasicConstraint

	cattr_reader :parking_types, :LABEL_PARKING, :LABEL_GYM, :LABEL_SWIMMING_POOL, :LABEL_LIFT, :LABEL_AC, :LABEL_SUBMIT_BUTTON
	#parking types
	@@parking_types = create_types [:no, :bike, :car, :both ]

	@@LABEL_PARKING = :parking

	@@LABEL_GYM		= :gym

	@@LABEL_LIFT	= :lift

	@@LABEL_AC		= :ac

	@@LABEL_SWIMMING_POOL	= "swimming pool"

	@@LABEL_SUBMIT_BUTTON	= "Add Facilities"

end