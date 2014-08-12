require 'address_constraint'
class Address < ActiveRecord::Base
	belongs_to :property
	belongs_to :land_property
	validates :street_name, presence: true, length: { maximum: AddressConstraint.street_name_length_max }
	validates :landmark,	presence: true, length: { maximum: AddressConstraint.landmark_length_max }

end
