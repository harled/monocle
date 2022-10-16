module Monocle
  class AuthorizationException < ActiveRecord::Base
    self.table_name = "authorization_exceptions"

    belongs_to :user, polymorphic: true, optional: true
  end
end
