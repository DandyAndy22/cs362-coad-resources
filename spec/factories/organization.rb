FactoryBot.define do 
	factory :organization do
		status { :approved }
		transportation { :yes }
		agreement_one { "hello world"}
	end
end