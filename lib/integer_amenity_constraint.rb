require "BasicConstraint"

class IntegerAmenitiesConstraint < BasicConstraint

	cattr_reader :BATHROOM_MAXIMUM_VALUE, :AC_MAXIMUM_VALUE, :TV_MAXIMUM_VALUE, :CUPBOARD_MAXIMUM_VALUE, :BED_MAXIMUM_VALUE,
				 :LABEL_BATHROOM, :LABEL_AC, :LABEL_TV, :LABEL_CUPBOARD, :LABEL_BED, :LABEL_SUBMIT_BUTTON

	@@BATHROOM_MAXIMUM_VALUE = 10

	@@AC_MAXIMUM_VALUE = 10

	@@TV_MAXIMUM_VALUE = 10

	@@CUPBOARD_MAXIMUM_VALUE = 10

	@@BED_MAXIMUM_VALUE = 10

	@@LABEL_BATHROOM 	= "Bathroom"

	@@LABEL_AC		 	= "AC"

	@@LABEL_TV			= "TV"

	@@LABEL_CUPBOARD	= "Cupboard"

	@@LABEL_BED			= "Bed"

	@@LABEL_SUBMIT_BUTTON = "Add Amenities"


end