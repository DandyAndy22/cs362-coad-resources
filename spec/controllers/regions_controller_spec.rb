require 'rails_helper'

RSpec.describe RegionsController, type: :controller do
	context 'As a public user' do
		describe '/regions' do
			specify { expect(get(:index)).to redirect_to(new_user_session_path) }
		end
		#cannot do anything
		#route to login
	end
	context 'As an organization user' do
		#cannot do anything
		#route to dashboard
	end
	context 'As an admin' do
		#can do stuff
	end

end
