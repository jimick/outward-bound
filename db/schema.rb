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

ActiveRecord::Schema.define(version: 20130623161718) do

  create_table "albums", force: true do |t|
    t.integer "cover_photo_id"
    t.integer "event_id"
    t.string  "event_type"
  end

  create_table "announcements", force: true do |t|
    t.string   "content_en"
    t.string   "content_hr"
    t.integer  "post_id"
    t.date     "expires_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attachments", force: true do |t|
    t.string   "name_hr"
    t.string   "name_en"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "url_hr"
    t.text     "url_en"
  end

  create_table "photos", force: true do |t|
    t.string   "uid"
    t.string   "url"
    t.string   "large_url"
    t.string   "title"
    t.string   "stored_on"
    t.integer  "album_id"
    t.string   "small_url"
    t.string   "medium_url"
    t.integer  "large_width"
    t.integer  "large_height"
    t.integer  "medium_width"
    t.integer  "medium_height"
    t.integer  "small_width"
    t.integer  "small_height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title_en"
    t.string   "title_hr"
    t.text     "body_en"
    t.text     "body_hr"
    t.integer  "album_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  create_table "tweets", force: true do |t|
    t.string   "author"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
