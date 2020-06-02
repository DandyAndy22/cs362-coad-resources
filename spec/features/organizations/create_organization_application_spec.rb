require 'rails_helper'

RSpec.describe 'Creating an organization application', type: :feature do

	context 'as a user' do
		let(:user) { create(:user) }

		it 'successfully' do
			log_in_as(user)
			visit new_organization_path(user)
			create(:user, :admin)
			choose("organization_liability_insurance_false")
			choose("organization_agreement_one_true")
			choose("organization_agreement_two_true")
			choose("organization_agreement_three_true")
			choose("organization_agreement_four_true")
			choose("organization_agreement_five_true")
			choose("organization_agreement_six_true")
			choose("organization_agreement_seven_true")
			choose("organization_agreement_eight_true")
			fill_in "organization_primary_name", with: "Shmoe, Joe"
			fill_in "organization_name", with: "Magical Dispensary"
			fill_in "organization_title", with: "Chief Engineer"
			fill_in "organization_phone", with: "541-987-3099"
			fill_in "organization_secondary_name", with: "Ross, Bob"
			fill_in "organization_secondary_phone", with: "111-111-1111"
			fill_in "organization_email", with: "joe_bob@zsnail.net"
			fill_in "organization_description", with: "Pretty sweet association"
			choose("organization_transportation_yes")
			click_on "Apply"
			skip
			save_and_open_page
		end
	end
end
