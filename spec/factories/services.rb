FactoryBot.define do
  factory :service do
    id { 1 }
    user_id { 1 }
    provider { "MyString" }
    uid { "MyString" }
    access_token { "MyString" }
    access_token_secret { "MyString" }
    refresh_token { "MyString" }
    expires_at { "2023-01-25 16:16:33" }
    auth { "MyText" }
    created_at { "2023-01-25 16:16:33" }
    updated_at { "2023-01-25 16:16:33" }
  end
end
