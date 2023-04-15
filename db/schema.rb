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

ActiveRecord::Schema[7.0].define(version: 2023_04_15_002244) do
  create_table "bets", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "score_home"
    t.integer "score_visit"
    t.string "total_point"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "championships", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clashes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "score_home"
    t.integer "score_visit"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "division_users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "position"
    t.integer "points"
    t.integer "victorys"
    t.integer "loses"
    t.integer "draws"
    t.integer "goal_scoredes"
    t.integer "goal_concededs"
    t.integer "position_previous"
    t.integer "exact_scores"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id"
    t.bigint "divisions_id"
    t.index ["divisions_id"], name: "index_division_users_on_divisions_id"
    t.index ["users_id"], name: "index_division_users_on_users_id"
  end

  create_table "divisions", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "goup"
    t.integer "godown"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "championships_id"
    t.index ["championships_id"], name: "index_divisions_on_championships_id"
  end

  create_table "matches", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "score_home"
    t.integer "score_visit"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rounds", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "limit_date_bet"
    t.string "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "championships_id"
    t.index ["championships_id"], name: "index_rounds_on_championships_id"
  end

  create_table "teams", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "imagem"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.string "email"
    t.boolean "admin"
    t.string "document"
    t.boolean "notification"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "teams_id"
    t.index ["teams_id"], name: "index_users_on_teams_id"
  end

  add_foreign_key "division_users", "divisions", column: "divisions_id"
  add_foreign_key "division_users", "users", column: "users_id"
  add_foreign_key "divisions", "championships", column: "championships_id"
  add_foreign_key "rounds", "championships", column: "championships_id"
  add_foreign_key "users", "teams", column: "teams_id"
end
