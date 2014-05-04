require 'BasicConstraint'

class PropertyConstraint < BasicConstraint

	cattr_reader :property_types, :furnishing_types, :lease_types, :cookie_current_property, 
					:row_property_location_id, :row_facility_id, :row_boolean_amenity_id, :row_integer_amenity_id, :powerbackup_types

	#property_type 
	@@property_types = create_types [:"1R", :"1RK", :"1BHK", :"2BHK", :"3BHK", :"4BHK", :"5BHK+"]

	#powerbackup 

	@@powerbackup_types = create_types [:semi, :full]

	#furnishing
	@@furnishing_types = create_types [:no, :semi, :full ]

	#lease_type
	@@lease_types = create_types [:rent,:lease, :pg]

	# facility row name
	@@row_facility_id = :facility_id

	#property_location_contraint
	@@row_property_location_id	= :property_location_id

	@@row_boolean_amenity_id	= :boolean_amenity_id

	@@row_integer_amenity_id	= :integer_amenity_id

	#current property cookie name
	@@cookie_current_property = :current_property

end