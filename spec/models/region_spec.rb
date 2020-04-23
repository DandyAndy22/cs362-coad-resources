require 'rails_helper'

RSpec.describe Region, type: :model do

	describe "relationships" do
		it "Expects to belong to" do
			expect(Region.new).to have_many(:tickets)
		end
	end

	# describe "attributes" do
	# 	it "has a name!!!!" do
	# 		expect(Region.new).to respond_to(:name)
	# 	end
	# end

	# properties
	# validations
	# methods


end
