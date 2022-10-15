# frozen_string_literal: true

module Monocle
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
