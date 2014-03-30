require 'spec_helper'

describe Property do

  before do
    oneBHK = 1;
    full_furnished = 1;
    available_from_date = Date.new(2007, 5, 12)
    rent = 1
    deposit_amount = 50000
    bathroom_number = 2
    build_area = 1200
    rent_amount = 12000
    interested_people = 0
    @property = Property.new do |p|
    	p.property_type 	= oneBHK
    	p.available_from 	= available_from_date
    	p.furnishing 		= full_furnished
    	p.lease_type 		= rent
    	p.build_area 		= build_area
    	p.rent 				= rent_amount
    	p.deposit 			= deposit_amount
    	p.bathroom 			= bathroom_number
    	p.interested_people_count = interested_people

    end
  end

  subject { @property }

  it { should respond_to(:property_type)}
  it { should respond_to(:furnishing)}
  it { should respond_to(:lease_type)}
  it { should respond_to(:bathroom)}
  it { should respond_to(:deposit)}
  it { should respond_to(:build_area)}
  it { should respond_to(:available_from)}
  it { should respond_to(:rent)}
  it { should respond_to(:interested_people_count)}

  describe 'when property_type is not present' do
  	before { @property.property_type = nil }
  	it { should_not be_valid }
  end

  describe 'when bathroom is not present' do
  	before { @property.bathroom = nil }
  	it { should_not be_valid }
  end

  describe 'when rent is no present' do
  	before { @property.rent = nil }
  	it { should_not be_valid }
  end

  describe 'when deposit is not present' do
  	before { @property.deposit = nil }
  	it { should_not be_valid }
  end

  describe 'when furnishing is no present' do
  	before { @property.furnishing = nil }
  	it { should_not be_valid }
  end

  describe 'when lease_type is not present' do
  	before { @property.lease_type = nil }
  	it { should_not be_valid }
  end

  describe 'when build_area is not present ' do
  	before { @property.build_area = nil }
  	it { should_not be_valid }
  end

  describe 'when available_from is not present ' do
  	before { @property.available_from = nil }
  	it { should_not be_valid}
  end

  describe 'when interested_people_count is not present ' do
  	before { @property.interested_people_count = nil }
  	it { should_not be_valid }
  end


  describe 'when property_type is not valid' do
    describe 'when property_type is less then min' do
    	before { @property.property_type = PropertyConstraint.minimum_value - 1 }
    	it { should_not be_valid }
    end
    describe 'when property_type is greater then max' do
      before { @property.property_type = PropertyConstraint.max_value_of_type(PropertyConstraint.property_types) + 1 }
      it { should_not be_valid }
    end
  end

  describe 'when bathroom is not valid' do
  	before { @property.bathroom = -1 }
  	it { should_not be_valid }
  end

  describe 'when rent is not valid' do
  	before { @property.rent = -1 }
  	it { should_not be_valid }
  end

  describe 'when deposit is not valid' do
  	before { @property.deposit = -1 }
  	it { should_not be_valid }
  end

  describe 'when furnishing is not valid' do
  	before { @property.furnishing = -1 }
  	it { should_not be_valid }
  end

  describe 'when lease_type is not valid' do
  	before { @property.lease_type = -1 }
  	it { should_not be_valid }
  end

  describe 'when build_area is not valid ' do
  	before { @property.build_area = -1 }
  	it { should_not be_valid }
  end



  describe 'when interested_people_count is not valid ' do
  	before { @property.interested_people_count = -1 }
  	it { should_not be_valid }
  end





end


































