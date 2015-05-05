require 'spec_helper'

describe "AuthenticationPages" do
  subject { page }

  describe "Authentication" do

    before { visit signin_path }

    it { should have_title("Sign in") }
    it { should have_content("Sign in") }

  end
end
