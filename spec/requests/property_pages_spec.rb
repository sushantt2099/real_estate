require 'spec_helper'

describe "Database Pages" do
	subject { page }

	describe 'Add Property page' do
		before { visit new_property_path }
		it { should have_content('Add New Property')}
		it { should have_title('Add New Property')}
	end

end
