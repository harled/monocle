# frozen_string_literal: true

module Monocle
  # Renders a component which shows:
  # - The number of exceptions by day over time
  class ControllersOverTimeComponent < ApplicationComponent
    def initialize(exceptions:, time_ago: 7.days, debug: false)
      @time_ago = time_ago
      @debug = debug
      data = exceptions.group_by_day(:created_at, range: time_ago.ago.., format: "%Y/%m/%d").count

      @exceptions_by_controller_over_time = if data.any?
        [{name: "By controller over time", data: data}]
      else
        []
      end
    end
  end
end
