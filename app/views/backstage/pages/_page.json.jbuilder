json.extract! page, :id, :title, :slug, :body, :user_id, :position, :parent_id, :created_at, :updated_at
json.url page_url(page, format: :json)
