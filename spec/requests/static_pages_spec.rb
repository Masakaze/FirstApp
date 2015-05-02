require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_title(page_title) }
    it { should have_content(heading) }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading) 		{ "StaticPagesHome" }
    let(:page_title) 	{ "" }

    it_should_behave_like "all static pages"
    it { should_not have_title("Home") }

    it "should have the right link" do
      visit root_path
      click_link "About"
      expect(page).to have_title("About")
      click_link "Help"
      expect(page).to have_title("Help")
      click_link "Contact"
      expect(page).to have_title("Contact")
      click_link "Signup"
      expect(page).to have_title("Signup")
    end
  end

  describe "Help page" do
    before { visit help_path }
    let(:heading) 		{ "StaticPagesHelp" }
    let(:page_title) 	{ "Help" }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }
    let(:heading) 		{ "StaticPagesAbout" }
    let(:page_title) 	{ "About" }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:heading) 		{ "StaticPagesContact" }
    let(:page_title) 	{ "Contact" }

    it_should_behave_like "all static pages"
  end
end

