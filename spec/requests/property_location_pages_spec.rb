require 'spec_helper'
require 'property_location_constraint'

describe "PropertyLocationPages" do
	subject { page }

	describe "PropertyLocation" do
		before { visit new_property_location_path }

		it { should have_content("Add Property Location")}
		it { should have_title("Add Property Location")}


		describe 'with invalid information ' do
			it 'should not create a propertylocaiton' do
				expect{ click_button PropertyLocationConstraint.SUBMIT_BUTTON }.not_to change(PropertyLocation, :count )
			end
		end
	end

end
