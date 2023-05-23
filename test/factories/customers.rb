FactoryBot.define do
  factory :customer do
    sequence(:name) { |n| "hoge#{n}" }
    sequence(:email) { |n| "hoge#{n}@example.com" }
    password { 'password' }
  end
end
