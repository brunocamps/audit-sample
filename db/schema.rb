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

ActiveRecord::Schema[7.0].define(version: 2023_01_24_234000) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "company_areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_processes", force: :cascade do |t|
    t.string "name"
    t.float "weight"
    t.float "evaluation"
    t.bigint "company_area_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "product"
    t.index ["company_area_id"], name: "index_user_processes_on_company_area_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.bigint "company_area_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_area_id"], name: "index_users_on_company_area_id"
  end

  add_foreign_key "user_processes", "company_areas"
  add_foreign_key "users", "company_areas"
end
