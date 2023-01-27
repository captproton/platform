Rails.configuration.to_prepare do
    module Avo
        class ApplicationController < ::ActionController::Base
            self.class_eval do
                if defined?(ActsAsTenant)
                    puts "================================"
                    puts "ActsAsTenant included/seen by Avo"
                    puts "================================"
                    Avo::ApplicationController.include ActsAsTenant
                    set_current_tenant_by_subdomain_or_domain(:account, :subdomain, :domain)
                else
                    puts "********************************"
                    puts "ActsAsTenant not included/seen by Avo"
                    puts "********************************"
                end
            end
        end
    end
end