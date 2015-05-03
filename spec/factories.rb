FactoryGirl.define do
	factory :user do
		name "John Wick"
		email "jwick@example.com"
		password "mypassword"
		password_confirmation "mypassword"
	end
end