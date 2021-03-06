require 'spec_helper'

describe "Static pages" do

	describe "Home page" do 

		it "should have the h1 'Document Management System'" do
			visit 'static_pages/home'
			page.should have_selector('h1', :text => 'Document Management System')
		
		end

		it "should have the title 'Docms | Home'" do
			visit 'static_pages/home'
			page.should have_selector('title', :text => "Docms | Home")
		end
	end


	describe "Help page" do 

		it "should have the h1 'Help'" do
			visit 'static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		
		end

		it "should have the title 'Docms | Help'" do
			visit 'static_pages/help'
			page.should have_selector('title', :text => "Docms | Help")
		end
	end


	describe "About page" do 

		it "should have the h1 'About us'" do
			visit 'static_pages/about'
			page.should have_selector('h1', :text => 'About us')
		
		end

		it "should have the title 'Docms | About Us'" do
			visit 'static_pages/about'
			page.should have_selector('title', :text => "Docms | About Us")
		end
	end
end
