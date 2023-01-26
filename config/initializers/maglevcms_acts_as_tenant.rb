## FIX: Yes, I know that this bad form. Ran out of time.
#  Possible help for the solution:
#  https://binarysolo.chapter24.blog/applying-monkey-patches-in-rails/
#  https://www.justinweiss.com/articles/3-ways-to-monkey-patch-without-making-a-mess/
#  https://blog.appsignal.com/2021/08/24/responsible-monkeypatching-in-ruby.html
#  https://www.brice-sanchez.com/how-to-properly-monkey-patch-a-ruby-class-in-ruby-on-rails/


Rails.configuration.to_prepare do
    module Maglev
        class Site < ApplicationRecord
          self.class_eval do
            acts_as_tenant :account       
          end
        end
        
        class Page < ApplicationRecord
          self.class_eval do
            acts_as_tenant :account               
          end
        end
    
          
        class PagePath < ApplicationRecord
          self.class_eval do
            acts_as_tenant :account               
          end
        end
      end
      
      module Maglev
        class PagePath < ApplicationRecord
          self.class_eval do
            _validators.reject!{ |key, _| key == :value }
      
            _validate_callbacks.each do |callback|
              callback.filter.attributes.delete :value if callback.filter.is_a?(ActiveRecord::Validations::UniquenessValidator)
            end
            validates :value, uniqueness: { scope: %i[locale canonical account_id] }, if: :canonical?
          end
        end
    
        class PagePath < ApplicationRecord
          self.class_eval do
            _validators.reject!{ |key, _| key == :canonical }
      
            _validate_callbacks.each do |callback|
              callback.filter.attributes.delete :canonical if callback.filter.is_a?(ActiveRecord::Validations::UniquenessValidator)
            end
            validates :canonical, uniqueness: { scope: %i[locale maglev_page_id account_id] }, if: :canonical?
          end
        end
    
      end
end