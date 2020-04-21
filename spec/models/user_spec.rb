require 'rails_helper'

RSpec.describe User, type: :model do
	
	describe "attributes" do
		it "has an email" do
			user = User.new 
			expect(user).to respond_to(:email)
		end
	end

	describe "relationships" do
		it "belongs to an organization" do
			user = User.new
			expect(user).to belong_to(:organization)
		end
	end
	
	describe "existence" do
		it "exists" do
			user = User.new
			expect(user)
		end
	end
	
	describe "validations" do
		it "validates email" do
			user = User.new
			expect(user).to validate_presence_of(:email)
		end
		it "validates length of email" do
			user = User.new
			expect(user).to validate_length_of(:email).is_at_least(1).is_at_most(255).on(:create)
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

	







