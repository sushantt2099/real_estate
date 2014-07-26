require 'interested_people_constraint'
class InterestedPerson < ActiveRecord::Base
	
	belongs_to :property

	validates :property_id, presence: true
	validates :phone_number, presence: true
	validates :status, presence: true, numericality: { only_integer: true, 
				less_than_or_equal_to: InterestedPeopleConstraint.max_value_of_type(InterestedPeopleConstraint.status_types),
				greater_than_or_equal_to: InterestedPeopleConstraint.minimum_value }

end
