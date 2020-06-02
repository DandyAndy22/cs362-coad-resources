require 'rails_helper'

RSpec.describe DashboardController, type: :controller do
	context 'As a public user' do
		#direct to login screen
		describe 'GET #index' do
			specify { expect(get(:index)).to redirect_to(new_user_session_path) }
		end
	end

	
end
