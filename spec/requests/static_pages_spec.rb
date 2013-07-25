require 'spec_helper'

# describe: string to describe the test. User's criteria.
describe "Static pages" do

  describe "Home page" do

    # After 'if' it was used another descriptive string.
    it "should have the h1 'Sample app'" do
      # visit: defines the file to be described:
      visit '/static_pages/home'
      # Rspec command with capybara syntax.
      # Describes that the page showd contain the string 'Sample App'.
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    end

  end


  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end

  end


  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
    end

  end

end