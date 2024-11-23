# frozen_string_literal: true

source "https://rubygems.org"
gemspec

# rails_version = "#{ENV['RAILS_VERSION'] || 'main'}"
rails_version = (ENV["RAILS_VERSION"] || "~> 8").to_s

gem "rails", (rails_version == "main") ? { git: "https://github.com/rails/rails", ref: "main" } : rails_version
gem "sqlite3", ">= 1.4"

# Static analysis for security vulnerabilities [https://brakemanscanner.org/]
gem "brakeman", require: false

# Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
gem "rubocop-rails-omakase", require: false

# gem "factory_bot_rails"
gem "rspec", "~> 3.0"
gem "rspec-rails", "~> 7.1"
gem "factory_bot", "~> 6.0"

gem "debug", platforms: %i[mri mingw x64_mingw]
