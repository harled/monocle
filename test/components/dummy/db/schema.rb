ActiveRecord::Schema[7.0].define(version: 2022_10_05_012232) do
    create_table "authorization_exceptions", force: :cascade do |t|
        t.string "title"
        t.string "request"
        t.string "controller_name"
        t.string "action_name"
        t.string "exception_class"
        t.text "backtrace", default: [], array: true
        t.bigint "user_id"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
        t.index ["user_id"], name: "index_application_exception_notifications_on_user_id"
    end
end