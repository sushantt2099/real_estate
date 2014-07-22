require 'property_location_constraint'
class PropertyLocation < ActiveRecord::Base

	belongs_to :property
	validates :area, presence: true, length: { maximum: PropertyLocationConstraint.area_length_max }

	validates :city, presence: true, numericality: { only_interger: true, 
														greater_than_or_equal_to: PropertyLocationConstraint.minimum_value,
														less_than_or_equal_to: PropertyLocationConstraint.max_value_of_type(
															PropertyLocationConstraint.city_types)}

	validates :state, presence: true, numericality: { only_interger: true, 
														greater_than_or_equal_to: PropertyLocationConstraint.minimum_value,
														less_than_or_equal_to: PropertyLocationConstraint.max_value_of_type(
															PropertyLocationConstraint.state_types)}

	validates :country, presence: true, numericality: { only_interger: true, 
														greater_than_or_equal_to: PropertyLocationConstraint.minimum_value,
														less_than_or_equal_to: PropertyLocationConstraint.max_value_of_type(
															PropertyLocationConstraint.country_types)}
end
