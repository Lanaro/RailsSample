require 'spec_helper'

describe "StaticPages" do
  describe "home page" do
    it "should have content 'Sample'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample')
    end

    it "should have title home" do
      visit '/static_pages/home'
      expect(page).to have_title("Home")
    end
  end

  describe "about page" do
    it "should contain the string 'information'" do
      visit "/static_pages/about"
      expect(page).to have_content('information')
    end

    it "should have title about" do
      visit "/static_pages/about"
      expect(page).to have_title("About")
    end
  end

  describe "help page" do
    it "should have title help" do
      visit "/static_pages/help"
      expect(page).to have_title("Help")
    end
  end
end
