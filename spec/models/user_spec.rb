require 'rails_helper'

RSpec.describe User, type: :model do
	it {should belong_to(:organization)}
end

RSpec.describe User do
	it {should expect(:email).to "justin@mail.com"}
end

