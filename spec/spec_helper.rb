# frozen_string_literal: true

require "rails_helper"
require "monocle"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  # view component test helpers
  config.include ViewComponent::TestHelpers, type: :component

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end