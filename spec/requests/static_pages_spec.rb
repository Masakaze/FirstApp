require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'StaticPagesHome'" do      visit '/static_pages/home'
      expect(page).to have_content('StaticPagesHome')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Home")
    end
  end

  describe "Help page" do
    it "should have the content 'StaticPagesHelp'" do      visit '/static_pages/help'
      expect(page).to have_content('StaticPagesHelp')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Help")
    end
  end

  describe "About page" do
    it "should have the content 'StaticPagesAbout'" do      visit '/static_pages/about'
      expect(page).to have_content('StaticPagesAbout')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("About")
    end
  end
end

