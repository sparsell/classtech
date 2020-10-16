# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20201012183121) do


  # I think the 'behaviors' should be their own class
  create_table "children", force: :cascade do |t|
    t.string  "name"
    t.integer "user_id"
    t.integer "grade_id"
    t.boolean "has_limits" #move to tech_rule
    t.boolean "can_text"  #move to tech_rule
    t.boolean "can_chat"  #move to tech_rule
    t.boolean "soc_media" #move to tech_rule
    t.boolean "play_games"  #move to tech_rule
    t.boolean "watch_yt"  #move to tech_rule
  end

  create_table "devices", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "device_type"
    t.integer  "child_id"
    t.boolean  "limits"
  end

  create_table "grades", force: :cascade do |t|
    t.integer "grade"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "user_name"
  end

end
