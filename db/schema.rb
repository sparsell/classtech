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

ActiveRecord::Schema.define(version: 20201027174115) do

  create_table "child_devices", force: :cascade do |t|
    t.integer "child_id"
    t.integer "device_id"
  end

  create_table "child_rules", force: :cascade do |t|
    t.integer "child_id"
    t.integer "rule_id"
  end

  create_table "children", force: :cascade do |t|
    t.string  "name"
    t.integer "user_id"
    t.integer "grade_id"
  end

  create_table "devices", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "device_type"
    t.boolean  "limits"
  end

  create_table "grades", force: :cascade do |t|
    t.integer "grade"
  end

  create_table "rules", force: :cascade do |t|
    t.string "rule_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "user_name"
  end

end
