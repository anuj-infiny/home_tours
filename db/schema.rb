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

ActiveRecord::Schema.define(version: 20161021085812) do

  create_table "home_images", force: :cascade do |t|
    t.integer  "home_id",            limit: 4,   null: false
    t.string   "photo",              limit: 255
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.integer  "photo_file_size",    limit: 4
    t.datetime "photo_updated_at"
  end

  create_table "homes", force: :cascade do |t|
    t.string  "home_type",             limit: 255
    t.string  "address",               limit: 255
    t.string  "description",           limit: 255
    t.date    "open_house_date"
    t.time    "open_house_start_time"
    t.time    "open_house_end_time"
    t.boolean "for_sale"
    t.integer "beds",                  limit: 4
    t.integer "baths",                 limit: 4
    t.string  "price",                 limit: 255
    t.decimal "lat",                               precision: 10
    t.decimal "lng",                               precision: 10
  end

  create_table "users", force: :cascade do |t|
    t.string  "username",        limit: 255
    t.string  "email",           limit: 255
    t.string  "first_name",      limit: 255
    t.string  "last_name",       limit: 255
    t.date    "created_date"
    t.boolean "is_admin"
    t.string  "password_digest", limit: 255
  end

end
