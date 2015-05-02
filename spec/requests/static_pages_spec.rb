require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'StaticPagesHome'" do      
      visit root_path
      expect(page).to have_content('StaticPagesHome')
    end

    it "should have the title 'Home'" do
      visit root_path
      expect(page).not_to have_title("Home")
    end
  end

  describe "Help page" do
    it "should have the content 'StaticPagesHelp'" do
      visit help_path
      expect(page).to have_content('StaticPagesHelp')
    end

    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title("Help")
    end
  end

  describe "About page" do
    it "should have the content 'StaticPagesAbout'" do      
      visit about_path
      expect(page).to have_content('StaticPagesAbout')
    end

    it "should have the title 'About'" do
      visit about_path
      expect(page).to have_title("About")
    end
  end

  describe "Contact page" do
    it "should have the content 'StaticPagesContact'" do
      visit contact_path
      expect(page).to have_content('StaticPagesContact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("Contact")
    end
  end
end

