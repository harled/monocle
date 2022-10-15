# frozen_string_literal: true

class Monocle::ExceptionsSinceTimeAgoComponent < ApplicationComponent
  def initialize(exceptions:, time_ago: 24.hours)
    @exceptions_created = exceptions.where(created_at: time_ago.ago..).count.to_f
    exceptions_last_period = exceptions.where(created_at: (2 * time_ago).ago..time_ago.ago).count.to_f

    @percentage_increase = if exceptions_last_period == 0
                             @exceptions_created
                           else
                             (@exceptions_created - exceptions_last_period) / exceptions_last_period
                           end

    @percentage_increase = (@percentage_increase * 100.0).round
  end
end
