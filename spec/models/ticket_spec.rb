require 'rails_helper'

RSpec.describe Ticket, type: :model do

	let(:ticket) {Ticket.new()}

	describe 'Existence' do
		it 'exists' do
			expect(ticket)
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
			expect(ticket).to belong_to(:organization)
		end
	end

	# Behavior
	# Validations
	# Attributes

end
