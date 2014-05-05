require 'PropertyConstraint.rb'
class Property < ActiveRecord::Base
	has_one :address
	has_one :property_location
	has_one :boolean_amenity
	has_one :integer_amenity

	validates :property_type, 	presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value,
								 less_than_or_equal_to: PropertyConstraint.max_value_of_type(PropertyConstraint.property_types) }
	
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
	validates :power_backup, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: PropertyConstraint.minimum_value, 
									less_than_or_equal_to: PropertyConstraint.max_value_of_type(PropertyConstraint.powerbackup_types)}

end
