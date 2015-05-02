require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "New page" do
    before { visit signup_path }
    it { should have_content("Signup") }
    it { should have_title("Signup") }
  end
end

