FactoryBot.define do 
	factory :organization do
		name { "Fake" }
		phone { "123456789" }
		secondary_name { "Secondary Fake" }
		secondary_phone { "987654321" }
		primary_name { "Bob" }
		email { 'Fake@test.com' }
		status { :approved }
		transportation { :yes }
		agreement_one { "hello world"}
		id {'5'}
		# trait :approved do
		# 	status { :approved }
		# end
	end
end