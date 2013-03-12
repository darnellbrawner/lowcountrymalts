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

ActiveRecord::Schema.define(version: 20130312190303) do

  create_table "clubs", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "area"
    t.string   "state"
    t.date     "founded"
    t.boolean  "aha_registered"
    t.time     "meeting_time"
    t.string   "meeting_date"
    t.string   "meeting_address"
    t.string   "meeting_zip"
    t.string   "meeting_city"
    t.string   "meeting_state"
    t.string   "alternate_meeting_address"
    t.string   "alternate_meeting_zip"
    t.string   "alternate_meeting_state"
    t.string   "alternate_meeting_city"
    t.datetime "alternate_meeting_datetime"
    t.boolean  "active"
    t.string   "dues"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                              default: "", null: false
    t.string   "encrypted_password",     limit: 128, default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
