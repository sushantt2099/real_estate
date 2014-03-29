require 'FacilityConstraint'

class Facility < ActiveRecord::Base
	belongs_to :property

	validates :parking, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: FacilityConstraint.minimum_value, 
														less_than_or_equal_to: FacilityConstraint.parking_types_max_value }

	validates :ac, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: FacilityConstraint.minimum_value }

end
