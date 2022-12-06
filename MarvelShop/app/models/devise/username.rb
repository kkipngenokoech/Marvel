module Devise
    module Models
      module Username
        extend ActiveSupport::Concern
  
        included do
          attr_writer :username
          validates_uniqueness_of :username, case_sensitive: false
          validates_format_of :username, with: /\A[a-zA-Z0-9_\.]*\z/, multiline: true
        end
  
        def username
          @username || email.split('@')[0]
        end
  
        def self.find_first_by_auth_conditions(warden_conditions)
          conditions = warden_conditions.dup
          login = conditions.delete(:login)
          if login
            where(conditions).where(["username = :value OR email = :value", { value: login }]).first
          else
            where(conditions).first
          end
        end
      end
    end
  end
  