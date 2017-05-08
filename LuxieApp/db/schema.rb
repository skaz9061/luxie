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

ActiveRecord::Schema.define(version: 20161025142131) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "luxie_id"
    t.integer  "store_info_id"
  end

  create_table "hours_schedules", force: :cascade do |t|
    t.string   "days"
    t.string   "open"
    t.string   "close"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "store_info_id"
    t.integer  "luxie_id"
  end

  create_table "luxies", force: :cascade do |t|
    t.string   "alert"
    t.string   "promo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "note"
    t.integer  "display_order"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "luxie_id"
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "note"
    t.string   "label"
    t.text     "description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "service_category_id"
  end

  create_table "staff_members", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.text     "bio"
    t.integer  "display_order"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "store_infos", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "email"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "luxie_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
