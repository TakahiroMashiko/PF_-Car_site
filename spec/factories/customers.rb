FactoryBot.define do
  factory :customer do
    sequence(:email) { |n| "TEST#{n}@example.com"}
    sequence(:last_name) { |n| "TEST_LAST_NAME#{n}"}
    sequence(:first_name) { |n| "TEST_FIRST_NAME#{n}"}
    sequence(:last_name_kana) { |n| "メイ#{n}"}
    sequence(:first_name_kana) { |n| "セイ#{n}"}
    sequence(:phone_number) { |n| "00000000000#{n}"}
    sequence(:is_active) { |n| "1#{n}"}
  end
end
