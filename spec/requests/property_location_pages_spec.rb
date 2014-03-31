require 'spec_helper'
require 'property_location_constraint'

describe "PropertyLocationPages" do
	subject { page }

	describe "PropertyLocation" do
		before { visit new_property_location_path }

		it { should have_content("Add Property Location")}
		it { should have_title("Add Property Location")}
		it { should have_content(PropertyLocationConstraint.LABEL_AREA) }


		describe 'with invalid information ' do
			it 'should not create a propertylocaiton' do
				expect{ click_button PropertyLocationConstraint.SUBMIT_BUTTON }.not_to change(PropertyLocation, :count )
			end
		end

		describe 'with valid information' do

			before do
				fill_in "Area",	with: "AECS Layout"
				select "Bangalore", from: "property_location[city]" 
				select "Karnataka", from: "property_location[state]"
				select "India", from: "property_location[country]"
			end

			it 'should create an entry in databse ' do

				expect { click_button PropertyLocationConstraint.SUBMIT_BUTTON}.to change(PropertyLocation, :count)
			end
		end
	end

end
