# frozen_string_literal: true

source "https://rubygems.org"
gemspec

# rails_version = "#{ENV['RAILS_VERSION'] || 'main'}"
rails_version = (ENV["RAILS_VERSION"] || "~> 7").to_s
gem "rails", (rails_version == "main") ? {git: "https://github.com/rails/rails", ref: "main"} : rails_version
gem "sqlite3", ">= 1.4"

gem "rake", "~> 13.0"

gem "rspec", "~> 3.0"

group :rubocop do
  gem "rubocop", ">= 1.68", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-performance", require: false
  gem "standard", "~> 1.42"
end

gem "factory_bot_rails"
gem "rspec-rails", "~> 7.1"

gem "debug", platforms: %i[mri mingw x64_mingw]

gem "net-imap", require: false
gem "net-pop", require: false
gem "net-smtp", require: false
