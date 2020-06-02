require 'rails_helper'

RSpec.describe 'Rejecting an organization', type: :feature do

	context 'as an admin' do
		let(:admin) { create(:user, :admin) }
		let(:organization) { create(:organization, :submitted) }

		it 'successfully' do
			log_in_as(admin)
			visit organization_path(organization)
			choose("pending")

		end
	end
end
