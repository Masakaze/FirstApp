require 'spec_helper'

describe User do
  before { @user = User.new(name: "test user", email: "user@example.com") }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }

  it { should be_valid }
  describe "when name is not present" do
    before { @user.name = "" }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = "" }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @user.name = "a"*51 }
    it { should_not be_valid }
  end

  describe "when email is invalid format" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo. foo@bar_baz.com foo@bar+baz.com]
      addresses.each { |invalid_addr|
        @user.email = invalid_addr
        expect(@user).not_to be_valid
      }
    end
  end

  describe "when email is valid format" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each { |valid_addr|
        @user.email = valid_addr
        expect(@user).to be_valid
      }
    end
  end

  describe "when email address is already taken" do
    before do
      same_email_user = @user.dup
      same_email_user.email = @user.email.downcase
      same_email_user.save
    end

    it { should_not be_valid }
  end
end
