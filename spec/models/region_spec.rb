require 'rails_helper'

RSpec.describe Region, type: :model do

	let(:region) {Region.new(name: 'The Shire')}


	describe "relationships" do
		it "Expects to belong to" do
			expect(region).to have_many(:tickets)
		end
	end

	describe "attributes" do
		it "has a name!!!!" do
			expect(region).to respond_to(:name)
		end
	end

	describe "validations" do
		it "has a specified length" do
			expect(region).to validate_length_of(:name).is_at_least(1).is_at_most(255).on(:create)
		end
		it "has unique name" do
			# this_region = Region.new(name: 'The')
			# expect(this_region.name).to be_falsey
		end
	end



	# properties
	# validations
	# methods


end
