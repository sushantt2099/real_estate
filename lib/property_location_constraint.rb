require 'BasicConstraint'
class PropertyLocationConstraint < BasicConstraint

	cattr_reader :country_types, :state_types, :city_types, :area_length_max

	@@country_types = create_types [:india]

	@@state_types	= create_types [:karnataka]

	@@city_types	= create_types [:bangalore]

	@@area_length_max = 20
end