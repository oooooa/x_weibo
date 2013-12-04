require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'XWeibo'" do
      visit root_path
      expect(page).to have_content 'XWeibo'
    end

    it "should have the base title 'Home'" do
      visit root_path
      expect(page).to have_title "XWeibo"
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).to_not have_title('| Home')
    end
  end

  describe "Help page" do
    it "should have content 'Help'" do
      visit help_path
      expect(page).to have_content 'Help'
    end

    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title "XWeibo | Help"
    end
  end

  describe "About page" do
    it "should have content 'About'" do
      visit about_path
      expect(page).to have_content 'About'
    end

    it "should have the title 'About'" do
      visit about_path
      expect(page).to have_title "XWeibo | About"
    end
  end
end
