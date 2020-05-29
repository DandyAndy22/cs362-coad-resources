FactoryBot.define do 
	factory :organization do
		name { "Fake_Organization" }
		email { 'Fake_Organization@test.com' }
		phone { "123456789" }
		secondary_name { "Secondary Fake" }
		secondary_phone { "987654321" }
		primary_name { "Bob" }
		status { :approved }
		transportation { :yes }
		agreement_one { "hello world"}
		id {'5'}
	end
end