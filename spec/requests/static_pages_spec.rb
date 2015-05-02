require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_content("StaticPagesHome") }
    it { should have_title("") }
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_content('StaticPagesHelp') }
    it { should have_title("Help") }
  end

  describe "About page" do
    before { visit about_path }
    it { should have_content('StaticPagesAbout') }
    it { should have_title("About") }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_content('StaticPagesContact') }
    it { should have_title("Contact") }
  end
end

