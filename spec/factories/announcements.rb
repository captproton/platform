FactoryBot.define do
  factory :announcement do
    id { 1 }
    published_at { "2023-01-25 16:16:42" }
    announcement_type { "MyString" }
    name { "MyString" }
    description { "MyText" }
    created_at { "2023-01-25 16:16:42" }
    updated_at { "2023-01-25 16:16:42" }
  end
end
