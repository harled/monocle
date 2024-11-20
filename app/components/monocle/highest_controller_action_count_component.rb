# frozen_string_literal: true

module Monocle
  # Renders a component which shows:
  # - The controller#action combination which has resulted in the largest about of exceptions
  class HighestControllerActionCountComponent < ApplicationComponent
    def initialize(exceptions:, time_ago: 24.hours, debug: false)
      @time_ago = time_ago
      @debug = debug
      @highest_controller_action_count = exceptions.group(:controller_name, :action_name).count.max_by(&:second)
      @highest_controller_action_count = if @highest_controller_action_count.nil?
        "no data"
      else
        @highest_controller_action_count.first.first + "#" + @highest_controller_action_count.first.second
      end
    end
  end
end
