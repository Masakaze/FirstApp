require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end

  describe "New page" do
    before { visit signup_path }
    it { should have_content("Signup") }
    it { should have_title("Signup") }
  end

  describe "singup" do
    before { visit signup_path }

    let(:submit){ "Create My Account"}
    
    describe "with invalid information" do
      it "should not create user" do
        expect { click_button submit }.not_to change(User, :count)
      end

      before { click_button submit }
      it { should have_title("Signup") }
      it { should have_content("error") }
    end

    describe "with valid information" do
      before do
        fill_in "Name", 			with: "ExampleUser"
        fill_in "Email", 			with: "user@example.com"
        fill_in "Password", 		with: "ExamplePass"
        fill_in "Confirmation", 	with: "ExamplePass"
      end

      it "should create user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end

      describe "after saving user" do
        before { click_button submit }
        let(:save_user) { User.find_by(email: "user@example.com") }
        it { should have_content(save_user.name) }
        it { should have_link("Sign out") }
      end
    end
  end

  describe "edit" do
    let(:user) { FactoryGirl.create(:user) }
    before do 
      visit signin_path
      sign_in user
      visit edit_user_path(user)
    end

    describe "page" do
      it { should have_content("Update your profile") }
      it { should have_title("Edit user") }
      it { should have_link("change", href: 'http://gravatar.com/emails') }
    end

    describe "with invalid information" do
      before { click_button "Save changes" }

      it { should have_content('error') }
    end

    describe "with valid information" do
      let(:new_name) 	{ "New User" }
      let(:new_email) 	{ "new-user@example.com" }

      before do
        fill_in "Name", 				with: new_name
        fill_in "Email", 				with: new_email
        fill_in "Password", 			with: user.password
        fill_in "Password Confirmation", with: user.password
        click_button "Save changes"
      end

      it { should have_title(new_name) }
      it { should have_selector('div.alert.alert-success') }
      it { should have_link("Sign out") }
      specify { expect(user.reload.name).to eq new_name }
      specify { expect(user.reload.email).to eq new_email }

    end
  end
end

