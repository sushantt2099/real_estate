require 'spec_helper'
require 'address_constraint'

describe Address do
	before do
		street_name = "abc stree"
		landmark	= "Brookfield Mall"
		latitude	= 12.123
		longitude	= 13.2321
		@address 	= Address.new do |a|
			a.street_name 	= street_name
			a.landmark		= landmark
			a.location_lat	= latitude
			a.location_long	= longitude
		end
	end

	subject { @address }

	it { should be_valid }
	it { should respond_to(:street_name) }
	it { should respond_to(:landmark) }
	it { should respond_to(:location_lat) }
	it { should respond_to(:location_long) }

	describe 'when street_name is not valid' do
		describe 'when street_name is not present ' do
			before { @address.street_name = "  " }
			it { should_not be_valid }
		end

		describe 'when street_name is too long' do
			before { @address.street_name = "a" * (AddressConstraint.street_name_length_max + 1) }
			it { should_not be_valid }
		end
	end

	describe 'when landmark is not valid ' do
		describe 'when landmark is not present ' do
			before { @address.landmark = "   " }
			it { should_not be_valid }
		end

		describe 'when landmark is too long ' do
			before { @address.landmark = "a" * (AddressConstraint.landmark_length_max + 1) }
			it { should_not be_valid }
		end
	end
end
