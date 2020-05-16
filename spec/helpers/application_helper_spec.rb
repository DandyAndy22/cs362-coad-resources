require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do

	describe 'full_title' do
		it 'returns base title if page title is empty' do
			base_title = 'Disaster Resource Network'
			expect(full_title).to eq(base_title)
		end

		it 'returns page title and base btitle' do
			page_title = 'Hello World'
			base_title = 'Disaster Resource Network'
			expect(full_title(page_title)).to eq("#{page_title} | #{base_title}")
		end
	end	

end
