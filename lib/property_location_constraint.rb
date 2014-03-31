require 'BasicConstraint'
class PropertyLocationConstraint < BasicConstraint

	cattr_reader	:country_types, :state_types, :city_types, :area_length_max, :SUBMIT_BUTTON, 
					:LABEL_AREA, :LABEL_CITY, :LABEL_STATE, :LABEL_COUNTRY

	@@country_types = create_types [:India]

	@@state_types	= create_types [:Karnataka]

	@@city_types	= create_types [:Bangalore]

	@@area_length_max = 20

	@@SUBMIT_BUTTON = "Add Location"

	@@LABEL_AREA	= :area

	@@LABEL_CITY	= :city

	@@LABEL_STATE	= :state

	@@LABEL_COUNTRY	= :country
end