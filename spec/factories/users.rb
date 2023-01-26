FactoryBot.define do
  factory :user do
    id { 1 }
    email { "MyString" }
    encrypted_password { "MyString" }
    reset_password_token { "MyString" }
    reset_password_sent_at { "2023-01-25 16:16:47" }
    remember_created_at { "2023-01-25 16:16:47" }
    first_name { "MyString" }
    last_name { "MyString" }
    announcements_last_read_at { "2023-01-25 16:16:47" }
    admin { false }
    created_at { "2023-01-25 16:16:47" }
    updated_at { "2023-01-25 16:16:47" }
  end
end
