FactoryGirl.define do
	factory :user do
		name "John Wick"
		email "jwick@example.com"
		password "mypassword"
		password_confirmation "mypassword"
	end

	factory :micropost do
		content "This is the content."
		user
	end
end