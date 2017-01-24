FactoryGirl.define do
  factory :artist do
    name Faker::Name.name
    photo "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/PM5544_with_non-PAL_signals.png/320px-PM5544_with_non-PAL_signals.png"
  end
end
