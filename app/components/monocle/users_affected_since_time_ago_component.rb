# frozen_string_literal: true

module Monocle
  # Renders a component which shows:
  # - The number of users affected by an exception within a specified time period
  # - The percentage increase in them
  class UsersAffectedSinceTimeAgoComponent < ApplicationComponent
    def initialize(exceptions:, time_ago: 24.hours)
      @time_ago = time_ago
      @users_affected = exceptions.where(created_at: time_ago.ago..).pluck(:user_id).uniq.count.to_f
      exceptions_last_period = exceptions.where(created_at: (2 * time_ago).ago..time_ago.ago).count.to_f

      @percentage_increase = calculate_percentage_increase(
        users_affected: @users_affected,
        exceptions_last_period: exceptions_last_period
      )
    end

    private

    def calculate_percentage_increase(users_affected:, exceptions_last_period:)
      if exceptions_last_period.zero?
        0
      else
        ((users_affected - exceptions_last_period) / exceptions_last_period * 100.0).round
      end
    end
  end
end
