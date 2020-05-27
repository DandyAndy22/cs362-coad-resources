require 'rails_helper'

RSpec.describe 'Updating an Organization', type: :feature do

	let(:organization) { create(:organization) }

	context 'As an admin user' do
		it 'Updating an organization successfully' do
			visit edit_organization_path(organization)
		end
	end

	context 'As an organization user' do
		let(:user) { create(:user) }
		let(:organization) { create(:organization)}

		it "Updating an organization successfully" do
			visit edit_organization_path(organization)
			fill_in "organization[name]", with: "Fake Name"
			click "Save"
			expect(page).to have_content("Fake Name")
		 end	
 	end

end
