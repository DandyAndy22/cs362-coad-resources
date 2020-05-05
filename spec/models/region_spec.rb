require 'rails_helper'

RSpec.describe Region, type: :model do

	let(:region) { build(:region) }


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
			expect(region).to validate_uniqueness_of(:name).case_insensitive
		end
	end

	describe "#to_s" do
		it "has a string representation of name" do
			expect(region.to_s).to eq(region.name)
		end
	end


	# properties
	# validations
	# methods


end
