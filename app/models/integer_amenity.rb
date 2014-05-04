require 'integer_amenity_constraint'
class IntegerAmenity < ActiveRecord::Base
	belongs_to :property

	validates :bathroom, presence: true, numericality: { only_integer: true, 
														greater_than_or_equal_to: IntegerAmenitiesConstraint.minimum_value,
														less_than_or_equal_to: IntegerAmenitiesConstraint.BATHROOM_MAXIMUM_VALUE }
	validates :ac, presence: true, numericality: { only_integer: true, 
														greater_than_or_equal_to: IntegerAmenitiesConstraint.minimum_value,
														less_than_or_equal_to: IntegerAmenitiesConstraint.AC_MAXIMUM_VALUE }

	validates :tv, presence: true, numericality: { only_integer: true, 
														greater_than_or_equal_to: IntegerAmenitiesConstraint.minimum_value,
														less_than_or_equal_to: IntegerAmenitiesConstraint.TV_MAXIMUM_VALUE }

	validates :cupboard, presence: true, numericality: { only_integer: true, 
														greater_than_or_equal_to: IntegerAmenitiesConstraint.minimum_value,
														less_than_or_equal_to: IntegerAmenitiesConstraint.CUPBOARD_MAXIMUM_VALUE }

	validates :bed, presence: true, numericality: { only_integer: true, 
														greater_than_or_equal_to: IntegerAmenitiesConstraint.minimum_value,
														less_than_or_equal_to: IntegerAmenitiesConstraint.BED_MAXIMUM_VALUE }


end
