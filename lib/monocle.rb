# frozen_string_literal: true

require_relative "monocle/version"

require_relative "../app/components/application_component"
require_relative "../app/components/monocle/exceptions_since_time_ago_component"
require_relative "../app/components/monocle/users_affected_since_time_ago_component"

module Monocle
  class Error < StandardError; end
  # Your code goes here...
end
