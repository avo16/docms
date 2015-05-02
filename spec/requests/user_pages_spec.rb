require 'spec_helper'

describe "User pages" do

	describe "signup page" do 

		it "should have the h1 'Users'" do
			visit 'users/new'
			page.should have_selector('h1', :text => 'Users')
		
		end

		it "should have the title 'Sign up'" do
			visit 'users/new'
			page.should have_selector('title', :text => "Sign up")
		end
	end
end