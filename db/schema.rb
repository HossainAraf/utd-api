ActiveRecord::Schema[8.1].define(version: 2025_12_15_045103) do
  create_schema "utech"

  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "utech.contact_submissions", force: :cascade do |t|
    t.string "company"
    t.datetime "created_at", null: false
    t.string "email", null: false
    t.string "ip_address"
    t.text "message", null: false
    t.string "name", null: false
    t.string "phone", null: false
    t.string "service_interest"
    t.integer "status", default: 0, null: false
    t.string "subject"
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_contact_submissions_on_email"
    t.index ["status"], name: "index_contact_submissions_on_status"
  end

end
