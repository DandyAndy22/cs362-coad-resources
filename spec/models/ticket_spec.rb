require 'rails_helper'

RSpec.describe Ticket, type: :model do

	let(:ticket) { build(:ticket) }

	describe 'Validations' do
		it 'validates presence of name' do
			expect(ticket).to validate_presence_of(:name)
		end
		it 'validates presence of phone' do
			expect(ticket).to validate_presence_of(:phone)
		end
		it 'validates presence of region_id' do
			expect(ticket).to validate_presence_of(:region_id)
		end
		#it 'validates presence of resource_category' do
		#	expect(ticket).to validate_presence_of(:resource_category)
		#end
		it 'validates the length of name' do
			expect(ticket).to validate_length_of(:name).is_at_least(1).is_at_most(255).on(:create)
		end
		it 'validates the length of description' do
			expect(ticket).to validate_length_of(:description).is_at_most(1020).on(:create)
		end

	end

	describe 'Relationships' do
		it 'belongs to a region' do
			expect(ticket).to belong_to(:region)
		end
		it 'belongs to a resource category' do
			expect(ticket).to belong_to(:resource_category)
		end
		it 'belongs to an organization' do
			expect(ticket).to belong_to(:organization).optional
		end
		#it 'validates phone number' do
		#	ticket = ticket()
		#	expect(ticket).to be_valid
		#	ticket.phone = 'INVALID'
		#	expect(ticket).to be_invalid
		#end	
	end

	describe 'Behavior' do
		it 'is open' do
			ticket.closed = false
			expect(ticket.closed).to eq(false)
			#expect(ticket.when(closed: false)).to be_falsey
		end
		it 'is closed' do
			expect(ticket.closed).to eq(true)
		end
		it 'has an organization and is open' do
			ticket.closed = false
			expect(ticket.organization_id).not_to be(nil) 
		end	
		it 'has an organization and is closed' do
			expect(ticket.organization_id).not_to be(nil)
		end
	end

	describe 'ticket open status method' do
		it 'returns false if closed status is true' do
			ticket.closed = :true
			expect(ticket.open?).to eq(false)
		end
		it 'returns true if closed status is false' do
			ticket.closed = :false
			expect(ticket.open?).to eq(true)
		end
	
	end

	describe 'ticket caputured? method' do
		it 'returns true if organization is present' do
			ticket.organization = build(:organization)
			expect(ticket.captured?).to eq(true)
		end
		it 'returns false if organization is not present' do
			expect(ticket.captured?).to eq(false)
		end
	end


	describe "#to_s" do
		it "has a string representation of Ticket id" do
			ticket.id = '2'
			expect(ticket.to_s).to eq("Ticket 2")
		end
	end

end