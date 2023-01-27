class Post < ApplicationRecord
  acts_as_tenant :account
  
  validates :title, presence: true
  
  has_rich_text :content

  has_one_attached :cover_photo

  def thumbnail_url
    return nil unless cover_photo.attached?
    Rails.application.routes.url_helpers.rails_blob_url(cover_photo, disposition: 'attachment')
  end
  
end
