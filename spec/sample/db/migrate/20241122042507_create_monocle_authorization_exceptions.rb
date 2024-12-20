class CreateMonocleAuthorizationExceptions < ActiveRecord::Migration[8.0]
  def change
    create_table :monocle_authorization_exceptions do |t|
      t.string :title
      t.string :request
      t.string :controller_name
      t.string :action_name
      t.string :exception_class
      t.text :backtrace, array: true, default: []

      t.references :user, polymorphic: true

      t.timestamps
    end
  end
end
