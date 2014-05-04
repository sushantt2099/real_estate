require 'BasicConstraint'

class BooleanAmenitiesConstraint < BasicConstraint
	cattr_reader :LABEL_DINING_TABLE, :LABEL_FRIDGE, :LABEL_SOFA, :LABEL_GAS_PIPE, :LABEL_STOVE, 
				:LABEL_GYM, :LABEL_SWIMMING_POOL, :LABEL_LIFT, :LABEL_WASHING_MACHINE, :LABEL_MICROWAVE, 
                :LABEL_SERVENT_ROOM, :LABEL_SUBMIT_BUTTON

	@@LABEL_DINING_TABLE 	= "Dining Table"
    @@LABEL_FRIDGE 			= "Fridge"
    @@LABEL_SOFA 			= "Sofa"
    @@LABEL_GAS_PIPE 		= "Gas Pipe"
    @@LABEL_STOVE 			= "Stove"
    @@LABEL_GYM 			= "Gym"
    @@LABEL_SWIMMING_POOL 	= "Swimming Pool"
    @@LABEL_LIFT 			= "Lift"
    @@LABEL_WASHING_MACHINE = "Washing Machine"
    @@LABEL_MICROWAVE		= "Microwave"
    @@LABEL_SERVENT_ROOM 	= "Servent Room"

    @@LABEL_SUBMIT_BUTTON   = "Add Amenities"

end
