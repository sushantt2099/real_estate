require 'spec_helper'

describe Facility do
	facilitiesContraint = FacilitiesConstraint.new

	before do
		gym	= true
		lift	= true
		swimming_pool = true
		parking_only_bike	= 0
		ac_number = 2

		@facility = Facility.new do |f|
			f.gym	= gym
			f.lift	= lift
			f.swimming_pool = swimming_pool
			f.parking = parking_only_bike
			f.ac = ac_number
		end
	end

	subject { @facility }

	it { should respond_to(:gym) }
	it { should respond_to(:lift) }
	it { should respond_to(:swimming_pool) }
	it { should respond_to(:parking) }
	it { should respond_to(:ac) }

	describe 'when it is valid' do 
		it { should be_valid}
	end

	describe 'when parking is not present ' do 
		before { @facility.parking = nil }
		it { should_not be_valid }
	end

	describe 'when ac is not present ' do 
		before { @facility.ac = nil }
		it { should_not be_valid }
	end

	describe 'when parking is not valid ' do
		describe 'when parking is less then valid value' do
			before { @facility.parking = facilitiesContraint.getMinimumValue - 1 }
			it { should_not be_valid }
		end

		describe 'when parking is greater then valid value' do
			before { @facility.parking = facilitiesContraint.getMaxOfParkingTypes + 1}
			it { should_not be_valid }
		end

	end


end
