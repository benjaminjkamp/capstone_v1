# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_13_091605) do

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
  end

  create_table "matches", force: :cascade do |t|
    t.integer "round_id"
    t.string "name"
    t.string "winner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rounds", force: :cascade do |t|
    t.string "name"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer "record_2017"
    t.integer "handicap_low_net"
    t.integer "handicap_skins"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
