FactoryBot.define do
  factory :quote do
    id { Faker::Number.unique.within(range: 1..100)}
    attributes {
      { name: Faker::Commerce.product_name,
        description: Faker::Lorem.sentence,
        unit_price: rand(50..20000),
        merchant_id: Faker::Number.unique.within(range: 1..100) }
    }
    skip_create
    initialize_with { new(attributes) }
  end
end