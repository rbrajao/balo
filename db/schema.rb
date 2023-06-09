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

ActiveRecord::Schema[7.0].define(version: 2023_04_21_184304) do
  create_table "active_storage_attachments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "bets", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "score_home"
    t.integer "score_visit"
    t.string "total_point"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "match_id"
    t.index ["match_id"], name: "index_bets_on_match_id"
    t.index ["user_id"], name: "index_bets_on_user_id"
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
    t.bigint "userhome_id"
    t.bigint "uservisit_id"
    t.bigint "round_id"
    t.bigint "division_id"
    t.index ["division_id"], name: "index_clashes_on_division_id"
    t.index ["round_id"], name: "index_clashes_on_round_id"
    t.index ["userhome_id"], name: "index_clashes_on_userhome_id"
    t.index ["uservisit_id"], name: "index_clashes_on_uservisit_id"
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
    t.bigint "user_id"
    t.bigint "division_id"
    t.index ["division_id"], name: "index_division_users_on_division_id"
    t.index ["user_id"], name: "index_division_users_on_user_id"
  end

  create_table "divisions", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "goup"
    t.integer "godown"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "championship_id"
    t.index ["championship_id"], name: "index_divisions_on_championship_id"
  end

  create_table "matches", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "score_home"
    t.integer "score_visit"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "teamhome_id"
    t.bigint "teamvisit_id"
    t.bigint "round_id"
    t.datetime "match_date"
    t.index ["round_id"], name: "index_matches_on_round_id"
    t.index ["teamhome_id"], name: "index_matches_on_teamhome_id"
    t.index ["teamvisit_id"], name: "index_matches_on_teamvisit_id"
  end

  create_table "rounds", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "limit_date_bet"
    t.string "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "championship_id"
    t.index ["championship_id"], name: "index_rounds_on_championship_id"
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
    t.bigint "team_id"
    t.index ["team_id"], name: "index_users_on_team_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bets", "matches"
  add_foreign_key "bets", "users"
  add_foreign_key "clashes", "divisions"
  add_foreign_key "clashes", "rounds"
  add_foreign_key "clashes", "users", column: "userhome_id"
  add_foreign_key "clashes", "users", column: "uservisit_id"
  add_foreign_key "division_users", "divisions"
  add_foreign_key "division_users", "users"
  add_foreign_key "divisions", "championships"
  add_foreign_key "matches", "rounds"
  add_foreign_key "matches", "teams", column: "teamhome_id"
  add_foreign_key "matches", "teams", column: "teamvisit_id"
  add_foreign_key "rounds", "championships"
end
