FactoryGirl.define do
  factory :song do
    title Faker::Lorem.word
    artist { build(:artist) }
  end
end
