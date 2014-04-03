require 'spec_helper'
require 'address_constraint'

describe "AddressPages" do
	subject { page }

	before { visit new_address_path }

	it { should have_content(AddressConstraint.PAGE_HEADER)}
	it { should have_title(AddressConstraint.PAGE_TITLE)}

	describe 'when submited with invalid data' do
		it 'should not change the database count ' do
			expect{ click_button AddressConstraint.SUBMIT_BUTTON }.not_to change(Address, :count)
		end
	end

	describe 'when submitted with valid data ' do
		before do
			fill_in "Street name", with: "AECS Layout"
			fill_in "Landmark",	with: "Brookfield mall"
			
		end


		it 'should change the database count ' do
			expect{ click_button AddressConstraint.SUBMIT_BUTTON}.to change(Address, :count)
		end
	end
		

end
