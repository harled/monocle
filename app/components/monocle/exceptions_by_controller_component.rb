# frozen_string_literal: true

module Monocle
  # Renders a component which shows:
  # - The number of exceptions divided by controller
  class ExceptionsByControllerComponent < ApplicationComponent
    def initialize(exceptions:, time_ago: 24.hours, debug: false)
      @time_ago = time_ago
      @debug = debug
      @exceptions_by_controller = []
      exceptions.where(created_at: time_ago.ago..).group(:controller_name).count.each do |controller_name, count|
        @exceptions_by_controller << {name: controller_name, data: count}
      end
    end
  end
end
