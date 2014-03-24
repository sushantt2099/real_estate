require 'PropertyConstraint.rb'
class Property < ActiveRecord::Base
	@propertyConstraint = PropertyConstraint.new
	validates :property_type, 		presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: @propertyConstraint.getMinimumValue,
					 less_than_or_equal_to: @propertyConstraint.getMaxOfType }

	validates :bathroom, 	presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: @propertyConstraint.getMinimumValue }
	
	validates :rent,		presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: @propertyConstraint.getMinimumValue }
	
	validates :deposit,		presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: @propertyConstraint.getMinimumValue }
	
	validates :furnishing,	presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: @propertyConstraint.getMinimumValue,
					less_than_or_equal_to: @propertyConstraint.getMaxOfFurnishing }
	
	validates :lease_type,	presence: true, 
				numericality: { only_integer: true, greater_than_or_equal_to: @propertyConstraint.getMinimumValue,
					less_than_or_equal_to: @propertyConstraint.getMaxOfLeaseType }
	
	validates :build_area,	presence: true, numericality: { only_integer: true, greater_than_or_equal_to: @propertyConstraint.getMinimumValue }
	validates :available_from, presence: true
	validates :interested_people_count, numericality: { only_integer: true, greater_than_or_equal_to: @propertyConstraint.getMinimumValue }
end
