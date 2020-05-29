FactoryBot.define do 
	factory :user do
		email { 'Fake_User@test.com' }
		password { 'password12345' }
		id { '5' }


		trait :admin do
			role { :admin }
			email { 'Fake_User1234@test.com' }
			password { 'password12345' }
			id { '9' }
		end

		trait :organization do
			role {:organization}
		end

		after :create do |user|
			user.confirm
		end
	end
end