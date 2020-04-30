require 'rails_helper'

RSpec.describe Ticket, type: :model do

	let(:ticket) {Ticket.new()}

	FactoryBot.define do 
		factory :ticket do
			closed true
			organization Organization.new
			region Region.new
			resource_category Resource_category.new
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

	describe 'Behavior' do

		it 'is open' do
			
		end
	end

	# Attributes

end
