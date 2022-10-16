require "rails/generators/active_record"

module Monocle
  module Generators
    class AuthorizationExceptionsGenerator < Rails::Generators::Base
      include ActiveRecord::Generators::Migration
      source_root File.join(__dir__, "templates")

      def copy_migration
        migration_template "create_authorization_exceptions.rb", "db/migrate/create_monocle_authorization_exceptions.rb", migration_version: migration_version
      end

      def migration_version
        "[#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}]"
      end
    end
  end
end