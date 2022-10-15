# frozen_string_literal: true

require "view_component"

# The base component for Monocle
class ApplicationComponent < ViewComponent::Base
  include ActiveModel::Validations

  def before_render
    validate!
  end
end
