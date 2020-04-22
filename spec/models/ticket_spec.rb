require 'rails_helper'

RSpec.describe Ticket, type: :model do

	describe 'Existence' do
		it 'exists' do
			ticket = Ticket.new()
			expect(ticket)
	  end
	end 
	# Relationships
	# Behavior
	# Validations
	# Attributes

end
