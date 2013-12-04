require 'spec_helper'

describe "Statici pages" do
  describe "Home page" do
    it "should have the content 'XWeibo'" do
      visit '/static_pages/home'
      expect(page).to have_content 'XWeibo'
    end

    it "should have the base title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title "XWeibo"
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).to_not have_title('| Home')
    end
  end

  describe "Help page" do
    it "should have content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content 'Help'
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title "XWeibo | Help"
    end
  end

  describe "About page" do
    it "should have content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content 'About'
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title "XWeibo | About"
    end
  end
end
