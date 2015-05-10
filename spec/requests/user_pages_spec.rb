require 'spec_helper'

describe "User pages" do

	subject { page }

	describe "index" do
			let(:user) { FactoryGirl.create(:user) }
			before do
				visit users_path
			end

		it { should have_selector('title', text: 'All users') }
		it { should have_selector('h1', text: 'All users') }

		it "should list each user" do
			User.all.each do |user|
				page.should have_selector('li', text: user.name)
			end
		end
	end

	describe "profile page" do 

		let(:user) { FactoryGirl.create(:user) }
		before { visit user_path(user) }

		it { should have_selector('h1', text: user.name) }
		it { should have_selector('title', text: user.name) }
	end

	describe "signup" do
		before { visit signup_path }
		let(:submit) { "Create my account" }

		describe "with invalid information" do 
			it "should not create a user" do
				expect { click_button submit }.to_not change(User, :count)
			end
		end

		describe "with valid information" do
			before do
				fill_in "Name", with: "Example User"
				fill_in "Email", with: "user@example.com"
				fill_in "Password", with: "foobar"
				fill_in "Confirmation", with: "foobar"
			end

			it "should create a user" do
				expect { click_button submit }.to change(User, :count).by(1)
			end
		
			describe "after saving the user" do
        		before { click_button submit }
        		let(:user) { User.find_by_email('user@example.com') }

        		it { should have_selector('title', text: user.name) }
       			it { should have_selector('div.alert.alert-success', text: 'Welcome') }
       			it { should have_link('Sign out') }
       		end
    	end
	end

 	describe "edit" do
 		let(:user) { FactoryGirl.create(:user) }
 		before { visit edit_user_path(user) }

 		describe "page" do
 			it { should have_selector('h1', text: "Update your profile") }
 			it { should have_selector('title', text: "Edit user") }
 		end

 		describe "with invalid information" do
 			before { click_button "Save changes" }

 			it{ should have_content('error') }
 		end

 		describe "with valid information" do
 			before do
 				fill_in "Name", with: user.name
 				fill_in "Email", with: user.email
 				fill_in "Password", with: user.password
 				fill_in "Confirm Password", with: user.password
 				click_button "Save changes"
 			end

 			specify { expect(user.reload.name).to  eq user.name }
  			specify { expect(user.reload.email).to eq user.email }
 		end
 	end
end