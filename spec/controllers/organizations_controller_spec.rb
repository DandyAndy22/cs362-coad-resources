require 'rails_helper'

RSpec.describe OrganizationsController, type: :controller do

	context 'As a public user' do
		describe 'GET #index' do
			specify { expect(get(:index)).to redirect_to(new_user_session_path) }
		end

		specify 'GET #new' do
			expect(get(:new)).to redirect_to(new_user_session_path)
		end

    specify 'PUT #create' do
      expect(put(:create)).to redirect_to(new_user_session_path)
    end

    specify 'POST #edit' do
      skip
      expect(post(:edit)).to redirect_to(new_user_session_path)
    end

    specify 'PUT #update' do
      expect(put :update, params: {id: 'FAKE'} ).to redirect_to(new_user_session_path)
    end

    specify 'GET #show' do
      skip
      expect(put(:show)).to redirect_to(new_user_session_path)
    end

    specify 'PUT #approve' do
      expect(put :approve, params: {id: 'FAKE', name: 'FAKE'} ).to redirect_to(new_user_session_path)
    end

    specify 'PUT #reject' do
      skip
      expect(put :reject, params: {id: 'FAKE', name: 'FAKE'} ).to redirect_to(new_user_session_path)
    end

    specify 'PUT #set_organization' do
      skip
      expect(put :set_organization, params: {id: 'FAKE'} ).to redirect_to(new_user_session_path)
    end

    specify 'PUT #organization_params' do 
      skip
      expect(put :organization_params, params: {id: 'FAKE'} ).to redirect_to(new_user_session_path)
    end

	end

	context 'As an admin' do
		let(:admin_user) { create(:user, :admin) }
		before(:each) { sign_in(admin_user) }

		describe 'GET #index' do
			specify	{ expect(get(:index)).to be_successful }
		end	
	end

	context 'As an organization user' do
		let(:user) { create(:user) }
		before(:each) { sign_in(user) }

		describe 'GET #index' do
			specify { expect(get(:index)).to be_successful }
		end
	end

end