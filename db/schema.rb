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

ActiveRecord::Schema.define(version: 20140302182423) do

  create_table "run_cards", force: true do |t|
    t.float    "pace"
    t.float    "distance"
    t.string   "type"
    t.string   "day"
    t.string   "time"
    t.string   "target_distance"
    t.string   "target_race"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "bio"
    t.date     "dob"
    t.string   "gender"
    t.string   "location"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
