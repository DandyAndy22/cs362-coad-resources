require 'rails_helper'

RSpec.describe Organization, type: :model do

	let(:organization) {Organization.new(
							status: :approved,
							transportation: :yes
							)}

	describe 'attributes' do
		it 'has an approved status' do
			expect(organization.status).to eq("approved")
		end
		it 'has a transportation' do
			expect(organization.transportation).to eq("yes")
		end
	end

	# attributes
	# relationships
	# validations
	# methods


end
