# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_07_140103) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "par_hole_1"
    t.integer "par_hole_2"
    t.integer "par_hole_3"
    t.integer "par_hole_4"
    t.integer "par_hole_5"
    t.integer "par_hole_6"
    t.integer "par_hole_7"
    t.integer "par_hole_8"
    t.integer "par_hole_9"
    t.integer "par_hole_10"
    t.integer "par_hole_11"
    t.integer "par_hole_12"
    t.integer "par_hole_13"
    t.integer "par_hole_14"
    t.integer "par_hole_15"
    t.integer "par_hole_16"
    t.integer "par_hole_17"
    t.integer "par_hole_18"
    t.integer "hdcp_hole_1"
    t.integer "hdcp_hole_2"
    t.integer "hdcp_hole_3"
    t.integer "hdcp_hole_4"
    t.integer "hdcp_hole_5"
    t.integer "hdcp_hole_6"
    t.integer "hdcp_hole_7"
    t.integer "hdcp_hole_8"
    t.integer "hdcp_hole_9"
    t.integer "hdcp_hole_10"
    t.integer "hdcp_hole_11"
    t.integer "hdcp_hole_12"
    t.integer "hdcp_hole_13"
    t.integer "hdcp_hole_14"
    t.integer "hdcp_hole_15"
    t.integer "hdcp_hole_16"
    t.integer "hdcp_hole_17"
    t.integer "hdcp_hole_18"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
  end

  create_table "handicaps", force: :cascade do |t|
    t.integer "hole"
    t.integer "value"
    t.integer "course_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer "round_id"
    t.string "name"
    t.string "winner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pars", force: :cascade do |t|
    t.integer "hole"
    t.integer "value"
    t.integer "course_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rounds", force: :cascade do |t|
    t.string "name"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tournament_id"
    t.string "format"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "team_id"
    t.integer "user_id"
    t.integer "hole"
    t.integer "score"
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "net_score"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "match_id"
    t.decimal "score_hole_1", precision: 2, scale: 1
    t.decimal "score_hole_2", precision: 2, scale: 1
    t.decimal "score_hole_3", precision: 2, scale: 1
    t.decimal "score_hole_4", precision: 2, scale: 1
    t.decimal "score_hole_5", precision: 2, scale: 1
    t.decimal "score_hole_6", precision: 2, scale: 1
    t.decimal "score_hole_7", precision: 2, scale: 1
    t.decimal "score_hole_8", precision: 2, scale: 1
    t.decimal "score_hole_9", precision: 2, scale: 1
    t.decimal "score_hole_10", precision: 2, scale: 1
    t.decimal "score_hole_11", precision: 2, scale: 1
    t.decimal "score_hole_12", precision: 2, scale: 1
    t.decimal "score_hole_13", precision: 2, scale: 1
    t.decimal "score_hole_14", precision: 2, scale: 1
    t.decimal "score_hole_15", precision: 2, scale: 1
    t.decimal "score_hole_16", precision: 2, scale: 1
    t.decimal "score_hole_17", precision: 2, scale: 1
    t.decimal "score_hole_18", precision: 2, scale: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "total_score", precision: 3, scale: 1
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "red_team_2mantotal"
    t.integer "red_team_2manbb"
    t.integer "red_team_altshot"
    t.integer "red_team_stableford"
    t.integer "red_team_head2head"
    t.integer "blue_team_2mantotal"
    t.integer "blue_team_2manbb"
    t.integer "blue_team_altshot"
    t.integer "blue_team_stableford"
    t.integer "blue_team_head2head"
    t.integer "year"
  end

  create_table "user_teams", force: :cascade do |t|
    t.integer "user_id"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "email"
    t.integer "avg_gnc"
    t.decimal "avg_two_year", precision: 6, scale: 2
    t.integer "ryder_cup_wins"
    t.integer "ryder_cup_losses"
    t.integer "ryder_cup_ties"
    t.string "record_2017"
    t.integer "handicap_low_net"
    t.integer "handicap_skins"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
