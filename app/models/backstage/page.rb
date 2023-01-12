class Backstage::Page < ApplicationRecord
    belongs_to :user

    extend FriendlyId
    friendly_id :slug_candidates, use: %i[slugged finders history]
  
    # Try building a slug based on the following fields in
    # increasing order of specificity.
    def slug_candidates
      [
        :title
      ]
    end
  
    def update_slug
      # self.slug = title.parameterize
    end
  
    def should_generate_new_friendly_id?
      title_changed?
    end
  
end
