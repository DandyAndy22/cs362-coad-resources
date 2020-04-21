require 'rails_helper'

RSpec.describe User, type: :model do
	
	let(:user) {User.new}

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
	end
	# validations
		# format of email
		# uniqueness of email

		# presence of password
		# length of password

		# optional relationship????

	# behavior


end

	







