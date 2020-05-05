require 'rails_helper'

RSpec.describe ResourceCategory, type: :model do

	let (:resource_category) { build(:resource_category) }

	describe "relationships" do
		it "has and belongs to many organizations" do
			expect(resource_category).to have_and_belong_to_many(:organizations)
		end
		it "has many tickets" do
			expect(resource_category).to have_many(:tickets)
		end
	end

	describe "validations" do
		it "validates name" do
			expect(resource_category).to validate_presence_of(:name)
		end
		it "validates length of name" do
			expect(resource_category).to validate_length_of(:name).is_at_least(1).is_at_most(255).on(:create)
		end
	end
#validations
# should I still be writing tests for all of these?
# the coverage doc says that these are covered already

#methods
	# describe "#self.unspecified" do
	# 	it "has a category named 'Unspecified', or it creates one" do
	# 		resource_category.unspecified
	# 	end
	# end
	describe 'activate and deactivate methods' do
		it 'activates' do
			resource_category.activate
			expect(resource_category.active).to eq(true)
		end
	end



	describe "#to_s" do
		it "has a string representation of name" do
			expect(resource_category.to_s).to eq(resource_category.name)
		end
	end
end 