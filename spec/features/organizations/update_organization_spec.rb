require 'rails_helper'

RSpec.describe 'Updating an Organization', type: :feature do
	
	context 'As an admin' do
		let(:admin) { create(:user, :admin) }
		let(:organization) { create(:organization) }

		it 'making a change to an organization' do
			log_in_as(admin)
			visit edit_organization_path(organization)
			fill_in 'Name', with: "Fake New Name"
			click_on "Update Resource"
			expect(page).to have_content("Fake New Name")
		end
	end

	context 'As an organization user' do
		let(:organization) { create(:organization) }
		let(:user) { create(:user, organization: organization) }

		it "Updating an organization successfully" do
			log_in_as(user)	
			visit edit_organization_path(organization)
			fill_in 'Name', with: "Fake New Name"
			click_on "Update Resource"
			expect(page).to have_content("Fake New Name")
		end	
 	end
end