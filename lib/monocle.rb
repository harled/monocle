# frozen_string_literal: true

# version
require_relative "monocle/version"

# view components
require_relative "../app/components/application_component"
require_relative "../app/components/monocle/exceptions_since_time_ago_component"
require_relative "../app/components/monocle/users_affected_since_time_ago_component"
require_relative "../app/components/monocle/exceptions_by_controller_component"
require_relative "../app/components/monocle/exceptions_by_request_component"
require_relative "../app/components/monocle/exceptions_by_user_component"
require_relative "../app/components/monocle/highest_controller_action_count_component"
require_relative "../app/components/monocle/controllers_over_time_component"

# models
require_relative "../app/models/monocle/authorization_exception"

module Monocle
end
