require 'rails_helper'

RSpec.describe 'Updating an Organization', type: :feature do
	
	context 'As an admin' do
		let(:admin) { create(:user, :admin) }
		let(:organization) { create(:organization) }

		before do
			create(:user, organization: organization)
		end

		it 'making a change to an organization' do
			log_in_as(admin)
			visit edit_organization_path(organization)


			fill_in 'Name', with: "Fake New Name"
			click_on "Update Resource"
			expect(page).to have_content("Fake New Name")


		end
	end

	context 'As an organization user' do
		let(:user) { create(:user, :organization) }

		it "Updating an organization successfully" do
			
		 end	
 	end

end
