FactoryBot.define do
  factory :notification do
    id { 1 }
    recipient_type { "MyString" }
    recipient_id { 1 }
    type { "" }
    params { "" }
    read_at { "2023-01-25 16:16:39" }
    created_at { "2023-01-25 16:16:39" }
    updated_at { "2023-01-25 16:16:39" }
  end
end
