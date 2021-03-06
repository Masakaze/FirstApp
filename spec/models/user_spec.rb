require 'spec_helper'

describe User do
  before { @user = User.new(name: "test user", email: "user@example.com", password: "testpass", password_confirmation: "testpass") }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:authenticate) }
  it { should respond_to(:remember_token) }
  it { should respond_to(:admin) }

  it { should be_valid }
  it { should_not be_admin }

  describe "with admin attribute set to 'true'" do
    before do
      @user.save!
      @user.toggle!(:admin)
    end

    it { should be_admin }
  end

  describe "when name is not present" do
    before { @user.name = "" }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = "" }
    it { should_not be_valid }
  end

  describe "when password is not presend" do
    before do
      @user.password = ""
      @user.password_confirmation = ""
    end
    it { should_not be_valid }
  end

  describe "when password doesn't match confirmation" do
    before { @user.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @user.name = "a"*51 }
    it { should_not be_valid }
  end

  describe "when email is invalid format" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo. foo@bar_baz.com foo@bar+baz.com foo@example.co..jp]
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

  describe "with a password that's too short" do
    before do
      tmp_pass = "a"*5
      @user.password = tmp_pass
      @user.password_confirmation = tmp_pass
    end
    it { should_not be_valid }
  end

  describe "return value of authenticate method" do
    before { @user.save }
    let(:found_user) { User.find_by(email: @user.email) }

    describe "with valid password" do
      it { should eq found_user.authenticate(@user.password) }
    end

    describe "with invalid password" do
      let(:user_invalid_password) { found_user.authenticate("invalid") }
      it { should_not eq user_invalid_password }
      specify { expect(user_invalid_password).to be_false }
    end
  end

  describe "email is saved as lower case" do
    let(:mixed_case_email){ "AbCdEfGh@expample.com" }
    it "should be saved as lower case" do
      @user.email = mixed_case_email
      @user.save
      expect(@user.reload.email).to eq mixed_case_email.downcase
    end
  end

  describe "remember_token" do
    before { @user.save }
    its(:remember_token) { should_not be_blank }
  end

end
 
