
ActiveRecord::Schema.define(version: 2022_07_09_214737) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_companies_on_email", unique: true
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true
  end

  create_table "modalities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_people_on_email", unique: true
    t.index ["reset_password_token"], name: "index_people_on_reset_password_token", unique: true
  end

  create_table "postulations", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "vacant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_postulations_on_person_id"
    t.index ["vacant_id"], name: "index_postulations_on_vacant_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vacants", force: :cascade do |t|
    t.string "job"
    t.text "description"
    t.integer "number_vacancies"
    t.integer "start_salary"
    t.integer "end_salary"
    t.date "start_date"
    t.bigint "company_id", null: false
    t.bigint "region_id", null: false
    t.bigint "modality_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_vacants_on_company_id"
    t.index ["modality_id"], name: "index_vacants_on_modality_id"
    t.index ["region_id"], name: "index_vacants_on_region_id"
  end

  add_foreign_key "postulations", "people"
  add_foreign_key "postulations", "vacants"
  add_foreign_key "vacants", "companies"
  add_foreign_key "vacants", "modalities"
  add_foreign_key "vacants", "regions"
end
