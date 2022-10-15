# frozen_string_literal: true

module Monocle
  # Base class for ApplicationRecord
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
