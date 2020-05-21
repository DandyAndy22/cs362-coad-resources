require 'rails_helper'

RSpec.describe 'Creating an Organization Application', type: :feature do

	describe 'Successful Submission' do
		it 'visits new orgaization application' do
			
			log_in_as(:organization)
			visit(new_organization_application_path)
		end
	end

end
