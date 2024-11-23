# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2024_11_22_042507) do
  create_table "monocle_authorization_exceptions", force: :cascade do |t|
    t.string "title"
    t.string "request"
    t.string "controller_name"
    t.string "action_name"
    t.string "exception_class"
    t.text "backtrace"
    t.string "user_type"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index [ "user_type", "user_id" ], name: "index_monocle_authorization_exceptions_on_user"
  end
end
