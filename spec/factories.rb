FactoryGirl.define do
  factory :user do
    name     "Test"
    email    "test@example.com"
    password "testpass"
    password_confirmation "testpass"
  end
end
