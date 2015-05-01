require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'StaticPagesHome'" do      visit '/static_pages/home'
      expect(page).to have_content('StaticPagesHome')
    end
  end

  describe "Help page" do
    it "should have the content 'StaticPagesHelp'" do      visit '/static_pages/help'
      expect(page).to have_content('StaticPagesHelp')
    end
  end

  describe "About page" do
    it "should have the content 'StaticPagesAbout'" do      visit '/static_pages/about'
      expect(page).to have_content('StaticPagesAbout')
    end
  end
end

