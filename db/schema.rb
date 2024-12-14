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

ActiveRecord::Schema[8.0].define(version: 2024_12_14_031344) do
  create_table "access_groups", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_league_access_groups", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "access_group_id", null: false
    t.integer "user_id", null: false
    t.index ["access_group_id"], name: "index_user_league_access_groups_on_access_group_id"
    t.index ["user_id"], name: "index_user_league_access_groups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.datetime "last_login_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "street_line1"
    t.string "street_line2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "email"
    t.string "phone"
  end

  add_foreign_key "user_league_access_groups", "access_groups"
  add_foreign_key "user_league_access_groups", "users"
end
