# frozen_string_literal: true

module Monocle
  # Renders a component which shows:
  # - The controller#action combination which has resulted in the largest about of exceptions
  class TopTenUsersComponent < ApplicationComponent
    def initialize(exceptions:, time_ago: 7.days)
      @time_ago = time_ago
      @top_10_users_causing_exceptions = exceptions.where(created_at: @time_ago.ago..).group(:user_id).count.sort_by(&:second).reverse
    end
  end
end
