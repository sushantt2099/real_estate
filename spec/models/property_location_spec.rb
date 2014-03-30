require 'spec_helper'
require 'property_location_constraint'

describe PropertyLocation do
	before do
		area = "AECS Layout"
		city = 0
		state = 0
		country = 0
		@property_location = PropertyLocation.new do |pl|
			pl.area = area
			pl.city = city
			pl.state = state
			pl.country = country
		end
		

	end

	subject { @property_location }

	it { should respond_to(:area) }
	it { should respond_to(:city) }
	it { should respond_to(:state) }
	it { should respond_to(:country) }

	describe 'When it is valid ' do
		it { should be_valid }
	end

	describe 'when area is invalid ' do
		describe 'when area is not present ' do
			before { @property_location.area = " " }
			it { should_not be_valid }
		end

		describe 'when area is too long' do
			before { @property_location.area =  "a" * (PropertyLocationConstraint.area_length_max + 1)}
			it { should_not be_valid }
		end
	end

	describe 'when city is invalid' do
		describe 'when city is less than minimum value ' do
			before { @property_location.city = PropertyLocationConstraint.minimum_value - 1 }
			it { should_not be_valid }
		end
		describe 'when city is greater than the maximum value ' do
			before { @property_location.city = 
							PropertyLocationConstraint.max_value_of_type(PropertyLocationConstraint.city_types) + 1 }
			it { should_not be_valid }
		end
	end

	describe 'when state is invalid ' do 
		describe 'when state is less than minimum value ' do
			before { @property_location.state = PropertyLocationConstraint.minimum_value - 1 }
			it { should_not be_valid }
		end

		describe 'when state is greater than the maximum value ' do 
			before { @property_location.state = PropertyLocationConstraint.max_value_of_type(
													PropertyLocationConstraint.state_types) + 1 }
			it { should_not be_valid }
		end
	end

	describe 'when country is invalid ' do 
		describe 'when country is less then minimum_value' do
			before { @property_location.country = PropertyLocationConstraint.minimum_value - 1 }
			it { should_not be_valid }
		end

		describe 'when country is greater that maximum' do
			before { @property_location.country = PropertyLocationConstraint.max_value_of_type(
				PropertyLocationConstraint.country_types) + 1 }
			it { should_not be_valid }
		end
	end 



































end
