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
		it 'has many tickets' do
			expect(organization).to have_many(:tickets)
		end
		it 'has and belongs to many resource categories' do
			expect(organization).to have_and_belong_to_many(:resource_categories)
		end
	end

	describe "validations" do
		it "validates presence of email" do
			expect(organization).to validate_presence_of(:email)
		end
		it "validates presence of name" do
			expect(organization).to validate_presence_of(:name)
		end
		it "validates presence of phone" do
			expect(organization).to validate_presence_of(:phone)
		end
		it "validates presence of status" do
			expect(organization).to validate_presence_of(:status)
		end
		it "validates presence of primary_name" do
			expect(organization).to validate_presence_of(:primary_name)
		end
		it "validates presence of secondary_name" do
			expect(organization).to validate_presence_of(:secondary_name)
		end
		it "validates presence of secondary_phone" do
			expect(organization).to validate_presence_of(:secondary_phone)
		end
		it "validates length of email" do
			expect(organization).to validate_length_of(:email).is_at_least(1).is_at_most(255).on(:create)
		end
		it "validates uniqueness of email" do
			expect(organization).to validate_uniqueness_of(:email).case_insensitive 
		end
		it "validates length of name" do
			expect(organization).to validate_length_of(:name).is_at_least(1).is_at_most(255).on(:create)
		end
		it "validates uniqueness of name" do
			expect(organization).to validate_uniqueness_of(:name).case_insensitive 
		end
		it "validates length of description" do
			expect(organization).to validate_length_of(:description).is_at_most(1020).on(:create)
		end
	end

	describe 'status setter methods' do
		it 'sets status to approved' do
			organization = Organization.new(status: :rejected)
			organization.approve 
			expect(organization.status).to eq("approved")
		end
		it 'sets status to rejected' do
			organization = Organization.new(status: :approved)
			organization.reject
			expect(organization.status).to eq("rejected")
		end
		it 'sets default status' do
			organization = Organization.new
			organization.set_default_status # do we have to call this function?
			expect(organization.status).to eq("submitted")
		end
	end

	describe "#to_s" do
		it "has a string representation of name" do
			expect(organization.to_s).to eq(organization.name)
		end
	end
end
	#validations
		#email format REGEX

	#attributes:
		#factory for testing the various statuses? 
		#how to efficiently test for attr_accessors