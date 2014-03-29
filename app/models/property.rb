require 'PropertyConstraint.rb'
class Property < ActiveRecord::Base
	has_one :facility

	validates :property_type, 		presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value,
					 less_than_or_equal_to: PropertyConstraint.property_types_max_value }

	validates :bathroom, 	presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value }
	
	validates :rent,		presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value }
	
	validates :deposit,		presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value }
	
	validates :furnishing,	presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value,
					less_than_or_equal_to: PropertyConstraint.furnishing_types_max_value }
	
	validates :lease_type,	presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value,
					less_than_or_equal_to: PropertyConstraint.lease_types_max_value }
	
	validates :build_area,	presence: true, numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value }
	validates :available_from, presence: true
	validates :interested_people_count, numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value }
end
