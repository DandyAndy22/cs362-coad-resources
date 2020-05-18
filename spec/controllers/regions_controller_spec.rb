require 'rails_helper'

RSpec.describe RegionsController, type: :controller do
	context 'As a public user' do
		describe 'GET #index' do
			specify { expect(get(:index)).to redirect_to(new_user_session_path) }
		end
	end

	context 'As an organization user' do
		let(:user) { create(:user) }
		before(:each) { sign_in(user) }

		describe 'GET #index' do
			specify { expect(get(:index)).to redirect_to(dashboard_path) }
		end
	end

	context 'As an admin' do
		let(:admin_user) { create(:user, :admin) }
		before(:each) { sign_in(admin_user) }

		describe 'GET #index' do
			specify	{ expect(get(:index)).to be_successful }
		end	

		describe 'use method' do
			# it 'makes a new region' do
			# 	expect(new).to be(Region.new)
			# end

			# it 'creates a region' do
			# 	region = Region.new(region_params)
			# 	expect(region.save).to eq('Region successfully created.')
			# end
		end

	end
end
