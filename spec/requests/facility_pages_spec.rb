require 'spec_helper'
require 'FacilityConstraint'

describe "FacilityPages" do
 
	subject { page }

	before { visit new_facility_path }


	it { should have_content("Describe Facilities")}
	it { should have_title(FacilityConstraint.PAGE_TITLE) }

	describe 'with invalid information' do
		it "should it should not change the database" do
			expect{ click_button FacilityConstraint.LABEL_SUBMIT_BUTTON }.not_to change(Facility, :count)
		end
	end

	describe 'with valid information ' do
		before do
			select "no", from: "facility[parking]"
			select "false", from: "facility[gym]"
			select "false", from: "facility[swimming_pool]"
			select "false", from: "facility[lift]"
			fill_in "Ac", with: "3"
		end

		it 'should change the database count ' do
			expect{ click_button FacilityConstraint.LABEL_SUBMIT_BUTTON }.to change(Facility, :count)
		end
	end

end
