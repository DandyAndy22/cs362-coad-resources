require 'rails_helper'

RSpec.describe ResourceCategory, type: :model do

	describe "relationships" do
		it "has and belongs to many organizations" do
			resource_category = ResourceCategory.new
			expect(resource_category).to have_and_belong_to_many(:organizations)
		end
	end

#relationships

#validations

#methods

end 