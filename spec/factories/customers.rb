FactoryBot.define do
  factory :customer do
    name {"taka"}
    sequence(:email) { |n| "taka#{n}@example.com"}
    password {"password"}
  end
end
