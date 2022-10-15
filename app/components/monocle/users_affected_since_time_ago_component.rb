# frozen_string_literal: true

class Monocle::UsersAffectedSinceTimeAgoComponent < ApplicationComponent
  def initialize(exceptions:, time_ago: 24.hours)
    @users_affected = exceptions.where(created_at: time_ago.ago..).pluck(:user_id).uniq.count.to_f
    exceptions_last_period = exceptions.where(created_at: (2 * time_ago).ago..time_ago.ago).count.to_f

    @percentage_increase = if exceptions_last_period == 0
                             @users_affected
                           else
                             (@users_affected - exceptions_last_period) / exceptions_last_period
                           end

    @percentage_increase = (@percentage_increase * 100.0).round
  end
end
