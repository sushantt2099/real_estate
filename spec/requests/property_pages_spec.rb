require 'spec_helper'

describe "PropertyPages" do
	subject { page }

	describe 'Add Property page' do
		before { visit '/properties' }
		it { should have_content('Add New Property')}
		it { should have_title('Add New Property')}
	end
end
