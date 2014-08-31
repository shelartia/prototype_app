require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Prototype App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Prototype App')
    end
	it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Prototype App | Home")
    end
  end
  
  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
	
	it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Prototype App | Help")
    end
  end
  
  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
	
	it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("Prototype App | About")
    end
  end
  
  
end