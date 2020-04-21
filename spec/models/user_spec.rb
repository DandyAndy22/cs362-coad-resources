require 'rails_helper'

RSpec.describe User, type: :model do
	describe "attributes" do
		it "has an email" do
			user = User.new 
			expect(user).to respond_to(:email)
		end
	end
end
	# existence
	
	# attributes
		
	# relationships
		#it {should belong_to(:organization)}
	# validations

	# behavior








