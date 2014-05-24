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

ActiveRecord::Schema.define(version: 20140524005607) do

  create_table "event_posts", force: true do |t|
    t.string   "title"
    t.string   "msg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "date"
    t.string   "startTime"
    t.string   "endTime"
    t.string   "description"
    t.boolean  "membersOnly"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
    t.integer  "society_id"
    t.integer  "ticketAmount"
  end

  add_index "events", ["event_id"], name: "index_events_on_event_id"
  add_index "events", ["society_id"], name: "index_events_on_society_id"

  create_table "events_societies", force: true do |t|
    t.integer "event_id"
    t.integer "society_id"
  end

  create_table "societies", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.float    "membershipFee"
    t.boolean  "verified"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "registrationNumber"
    t.string   "website"
    t.string   "societyWebsite"
    t.string   "societyURL"
    t.string   "customWebsite"
  end

  create_table "tickets", force: true do |t|
    t.string   "ticketType"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "phoneNum"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "webAdmin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
