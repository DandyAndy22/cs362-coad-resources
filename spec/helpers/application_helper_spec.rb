require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do

	describe 'full_title' do
		it 'returns base title if page title is empty' do
			expect(full_title).to eq('Disaster Resource Network')
		end
	end	

end
