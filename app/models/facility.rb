require 'FacilitiesConstraint'

class Facility < ActiveRecord::Base
	belongs_to :property
	@facilitiesContraint = FacilitiesConstraint.new

	validates :parking, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: @facilitiesContraint.getMinimumValue, 
														less_than_or_equal_to: @facilitiesContraint.getMaxOfParkingTypes }

	validates :ac, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: @facilitiesContraint.getMinimumValue }

end
