# frozen_string_literal: true

module Monocle
  # Renders a component which shows:
  # - The controller#action combination which has resulted in the largest about of exceptions
  class HighestControllerActionCountComponent < ApplicationComponent
    def initialize(exceptions:, time_ago: 24.hours)
      @time_ago = time_ago
      @highest_controller_action_count = exceptions.group(:controller_name, :action_name).count.max_by(&:second)
      @highest_controller_action_count = @highest_controller_action_count.first.first + "#" + @highest_controller_action_count.first.second
    end
  end
end
