require 'constraint/basic_constraint'

class LandPropertyConstraint < BasicConstraint

	cattr_reader :lease_types, :water_supply_types, :cookie_current_property

	#lease_type
	@@lease_types = create_types [:sale, :lease]


	@@water_supply_types = create_types [:none, :Kaveri, :"Ground Water", :Both]

	@@cookie_current_property = "land_property"

end