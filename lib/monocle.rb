# frozen_string_literal: true

# version
require_relative "monocle/version"

# view components
require_relative "../app/components/application_component"
require_relative "../app/components/monocle/exceptions_since_time_ago_component"
require_relative "../app/components/monocle/users_affected_since_time_ago_component"

# models
require_relative "../app/models/monocle/authorization_exception"

module Monocle
end
