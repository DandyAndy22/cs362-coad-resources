require 'rails_helper'

RSpec.describe User, type: :model do
	
	let(:user) {User.new(email: 'test@mail.com')}

	describe "attributes" do
		it "has an email" do
			expect(user).to respond_to(:email)
		end
	end

	describe "relationships" do
		it "belongs to an organization" do
			expect(user).to belong_to(:organization)
		end
	end
	
	describe "validations" do
		it "validates email" do
			expect(user).to validate_presence_of(:email)
		end
		it "validates length of email" do
			expect(user).to validate_length_of(:email).is_at_least(1).is_at_most(255).on(:create)
		end
		it "validates uniqueness of email" do
			expect(user).to validate_uniqueness_of(:email).case_insensitive 
		end
		it "validates password" do
			expect(user).to validate_presence_of(:password).on(:create)
		end
		it "validates length of password" do
			expect(user).to validate_length_of(:password).is_at_least(7).is_at_most(255).on(:create)
		end
	end

	describe "#to_s" do
		it "has a string representation of email" do
			expect(user.to_s).to eq(user.email)
		end
	end

	describe "#set_default_role" do
		it "has a default role" do
			expect(user.role).to eq("organization")
		end
	end
end
	# validations
		# format of email
		# optional relationship????