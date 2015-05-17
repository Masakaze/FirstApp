FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Person#{n}" }
    sequence(:email) { |n| "Test#{n}@example.com" }
    password "testpass"
    password_confirmation "testpass"
  end
end
