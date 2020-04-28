require 'rails_helper'

RSpec.describe Organization, type: :model do

	let(:organization) {Organization.new(
							status: :approved,
							transportation: :yes,
							agreement_one: "hello world"

							)}

	describe 'attributes' do
		it 'has an approved status' do
			expect(organization.status).to eq("approved")
		end
		it 'has a transportation' do
			expect(organization.transportation).to eq("yes")
		end
		it 'has an agreement' do
			expect(organization.agreement_one).to eq("hello world")
		end
	end

	describe 'relationships' do
		it 'has many users' do
			expect(organization).to have_many(:users)
		end
	end


	#validations:
		#factory for testing the various statuses? 
		#how to efficiently test for attr_accessors

	# relationships
	# validations
	# methods


end
