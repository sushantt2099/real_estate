require 'PropertyConstraint.rb'
class Property < ActiveRecord::Base
	has_one :facility

	validates :property_type, 		presence: true, numericality: { only_integer: true, 
																	greater_than_or_equal_to: PropertyConstraint.minimum_value,
								 less_than_or_equal_to: PropertyConstraint.max_value_of_type(PropertyConstraint.property_types) }

	validates :bathroom, 	presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value }
	
	validates :rent,		presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value }
	
	validates :deposit,		presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value }
	
	validates :furnishing,	presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value,
					less_than_or_equal_to: PropertyConstraint.max_value_of_type(PropertyConstraint.furnishing_types) }
	
	validates :lease_type,	presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value,
					less_than_or_equal_to: PropertyConstraint.max_value_of_type(PropertyConstraint.lease_types) }
	
	validates :build_area,	presence: true, numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value }
	validates :available_from, presence: true
	validates :interested_people_count, numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value }
end
