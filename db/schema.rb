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

ActiveRecord::Schema[7.1].define(version: 2024_04_13_233814) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "most_recently_used"
    t.date "most_recently_maintained"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercise_routine_junctions", force: :cascade do |t|
    t.bigint "exercise_routine_id", null: false
    t.bigint "exercise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_exercise_routine_junctions_on_exercise_id"
    t.index ["exercise_routine_id"], name: "index_exercise_routine_junctions_on_exercise_routine_id"
  end

  create_table "exercise_routines", force: :cascade do |t|
    t.string "name"
    t.integer "days_per_week"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.integer "sets"
    t.integer "reps_per_set"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "health_metrics", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.bigint "members_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["members_id"], name: "index_health_metrics_on_members_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
  end

  create_table "scaffolds", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "Trainers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_scaffolds_on_email", unique: true
    t.index ["reset_password_token"], name: "index_scaffolds_on_reset_password_token", unique: true
  end

  add_foreign_key "exercise_routine_junctions", "exercise_routines"
  add_foreign_key "exercise_routine_junctions", "exercises"
  add_foreign_key "health_metrics", "members", column: "members_id"
end
