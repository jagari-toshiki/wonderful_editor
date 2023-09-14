FactoryBot.define do
  factory :article do
    title { Faker::Lorem.characters(number: 5) + Faker::Lorem.word }
    body { Faker::Lorem.sentence }
    user
  end
end
