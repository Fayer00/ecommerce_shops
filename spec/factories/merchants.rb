FactoryBot.define do
  factory :merchant do
    name { Faker::Name.name }
    email { Faker::Internet::email }
    cif { "B611111111" }
  end
end
