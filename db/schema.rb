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

ActiveRecord::Schema.define(version: 20161108123005) do

  create_table "chitti_details", force: :cascade do |t|
    t.integer  "chitti_no",   limit: 4
    t.text     "chitti_name", limit: 65535
    t.integer  "amount",      limit: 4
    t.integer  "validity",    limit: 4
    t.text     "recurr_type", limit: 65535
    t.integer  "pay_amount",  limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "chitti_users", force: :cascade do |t|
    t.integer  "chitti_detail_id", limit: 4
    t.integer  "user_id",          limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.text     "name",                   limit: 65535
    t.string   "house_name",             limit: 255
    t.string   "place",                  limit: 255
    t.string   "city",                   limit: 255
    t.integer  "mob_no",                 limit: 4
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "email",                  limit: 255,   default: "", null: false
  end

end
