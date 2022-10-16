module Monocle
  class AuthorizationException < ActiveRecord::Base
    self.table_name = "authorization_exceptions"

    belongs_to :user, polymorphic: true, optional: true

    serialize :backtrace

    after_initialize do |authorization_exception|
      authorization_exception.backtrace = [] if authorization_exception.backtrace.nil?
    end
  end
end
