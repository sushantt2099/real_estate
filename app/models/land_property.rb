require 'PropertyConstraint.rb'
require 'land_property_constraint'

class LandProperty < ActiveRecord::Base

	has_one :address
	has_one :property_location
	has_many :photos
	has_many :interested_people

	validates :lease_type,	presence: true, 
			numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value,
				less_than_or_equal_to: PropertyConstraint.max_value_of_type(PropertyConstraint.lease_types) }

	validates :interested_people_count, numericality: { only_integer: true, 
					greater_than_or_equal_to: PropertyConstraint.minimum_value }

	validates :water_supply, presence: true, numericality: { only_integer: true, 
						greater_than_or_equal_to: PropertyConstraint.minimum_value,
						less_than_or_equal_to: PropertyConstraint.max_value_of_type(LandPropertyConstraint.water_supply_types)}

	validates :area,	presence: true, numericality: { only_integer: true, 
					greater_than_or_equal_to: PropertyConstraint.minimum_value }

	validates :price,		presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value }
end
