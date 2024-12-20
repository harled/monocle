# frozen_string_literal: true

module Monocle
  # Renders a component which shows:
  # - The number of exceptions divided by user id
  class ExceptionsByUserComponent < ApplicationComponent
    def initialize(exceptions:, time_ago: 24.hours, debug: false)
      @time_ago = time_ago
      @debug = debug
      @exceptions_by_user = []
      exceptions.where(created_at: time_ago.ago..).group(:user_id).count.each do |user_id, count|
        @exceptions_by_user << { name: "User id #{user_id}", data: count }
      end
    end
  end
end
