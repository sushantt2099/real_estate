require 'PropertyConstraint.rb'
class Property < ActiveRecord::Base
	has_one :address
	has_one :property_location
	has_one :boolean_amenity
	has_one :integer_amenity
	has_many :photos
	has_many :interested_people
   	accepts_nested_attributes_for :photos

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
	
	validates :build_area,	presence: true, numericality: { only_integer: true, 
						greater_than_or_equal_to: PropertyConstraint.minimum_value }

	validates :available_from, presence: true

	validates :interested_people_count, numericality: { only_integer: true, 
						greater_than_or_equal_to: PropertyConstraint.minimum_value }

	validates :power_backup, presence: true, numericality: { only_integer: true, 
						greater_than_or_equal_to: PropertyConstraint.minimum_value, 
						less_than_or_equal_to: PropertyConstraint.max_value_of_type(PropertyConstraint.powerbackup_types)}

	validates :occupant, presence: true, numericality: { only_integer: true, 
						greater_than_or_equal_to: PropertyConstraint.minimum_value,
						less_than_or_equal_to: PropertyConstraint.max_value_of_type(PropertyConstraint.occupant_types)}

	validates :facing, presence: true, numericality: { only_integer: true, 
						greater_than_or_equal_to: PropertyConstraint.minimum_value,
						less_than_or_equal_to: PropertyConstraint.max_value_of_type(PropertyConstraint.facing_types)}

	validates :security, presence: true, numericality: { only_integer: true, 
						greater_than_or_equal_to: PropertyConstraint.minimum_value,
						less_than_or_equal_to: PropertyConstraint.max_value_of_type(PropertyConstraint.security_types)}

	validates :water_supply, presence: true, numericality: { only_integer: true, 
						greater_than_or_equal_to: PropertyConstraint.minimum_value,
						less_than_or_equal_to: PropertyConstraint.max_value_of_type(PropertyConstraint.water_supply_types)}
end
