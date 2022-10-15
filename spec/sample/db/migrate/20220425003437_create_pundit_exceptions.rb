# frozen_string_literal: true

class CreatePunditExceptions < ActiveRecord::Migration[7.0]
  def change
    create_table :pundit_exceptions do |t|
      t.text :controller_name, null: false
      t.text :action_name, null: false

      # Typically would represent a foreign_key relation to a User table
      t.bigint :user_id, null: false

      t.timestamps
    end
  end
end
