# frozen_string_literal: true

module Monocle
  # Renders a component which shows:
  # - The number of exceptions divided by controller
  class ExceptionsByRequestComponent < ApplicationComponent
    def initialize(exceptions:, time_ago: 24.hours)
      @exceptions_by_request = []
      exceptions.where(created_at: time_ago.ago..).group(:request).count.each do |request, count|
        @exceptions_by_request << {name: request, data: count}
      end
    end
  end
end
