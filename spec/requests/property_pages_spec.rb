require 'spec_helper'

describe "Database Pages" do
	subject { page }

	describe 'Add Property page' do
		before { visit '/properties' }
		it { should have_content('Add New Property')}
		it { should have_title('Add New Property')}
	end

	describe 'Facility Page' do
		before { visit '/facilities' }
		it { should have_content('Mention Facilities')}
		it { should have_title('Mention Facilities')}
	end
end
