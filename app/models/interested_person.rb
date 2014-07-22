class InterestedPerson < ActiveRecord::Base
	
	belongs_to :property

	validates :property_id, presence: true
	validates :phone_number, presence: true

end
