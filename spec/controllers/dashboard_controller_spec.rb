require 'rails_helper'

RSpec.describe DashboardController, type: :controller do
	context 'As a public user' do
		#direct to login screen
		describe 'GET #index' do
			specify { expect(get(:index)).to redirect_to(new_user_session_path) }
		end
	end

	context 'As an admin' do
    #direct to tickets dashboard, should not show organization buttons
		let(:admin_user) { create(:user, :admin) }
		before(:each) { sign_in(admin_user) }

		describe 'GET #index' do
			specify	{ expect(get(:index)).to be_successful }
		end	

	end
	
end
