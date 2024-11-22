# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @time_ago = if params[:period] == "week"
      1.week
    elsif params[:period] == "month"
      1.month
    else
      1.day
    end

    @exceptions = Monocle::AuthorizationException.all
  end
end
