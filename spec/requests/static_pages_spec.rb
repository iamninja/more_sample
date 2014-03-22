require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Yada App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Yada App')
    end

    it "should have title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title('Yada App - Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title('Yada App - Help')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title('Yada App - About')
    end
  end
end
