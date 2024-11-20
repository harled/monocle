# frozen_string_literal: true

module Monocle
  # Renders a component which shows:
  # - The number of exceptions by day over time
  class ControllersOverTimeComponent < ApplicationComponent
    def initialize(exceptions:, time_ago: 7.days, debug: false)
      @time_ago = time_ago
      @debug = debug
      @exceptions_by_controller_over_time = [{name: "By controller over time", data: exceptions.group_by_day(:created_at, range: time_ago.ago.., format: "%Y/%m/%d").count}]
    end
  end
end
