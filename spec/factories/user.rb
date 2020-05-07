FactoryBot.define do 
	factory :user do
		email { 'Fake@test.com' }
		password { 'password12345' }
		trait :admin do
			role { :admin }
		end

		after :create do |user|
			user.confirm
		end
		
	end
end