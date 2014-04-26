require 'FacilityConstraint'

class Facility < ActiveRecord::Base

	validates :parking, presence: true, numericality: { only_integer: true, 
														greater_than_or_equal_to: FacilityConstraint.minimum_value, 
														less_than_or_equal_to: 
																FacilityConstraint.max_value_of_type(FacilityConstraint.parking_types) }

	validates :ac, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: FacilityConstraint.minimum_value }

end
