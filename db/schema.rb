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

ActiveRecord::Schema.define(version: 20150511033305) do

  create_table "artist_videos", force: :cascade do |t|
    t.integer  "artist_id"
    t.integer  "video_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "wiki_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collections", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collections_videos", force: :cascade do |t|
    t.integer  "collection_id"
    t.integer  "video_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string   "youtube_id"
    t.string   "thumbnail"
    t.string   "artist"
    t.string   "title_korean"
    t.string   "title_english"
    t.string   "youtube_user_id"
    t.string   "category"
    t.text     "description"
    t.integer  "hotness",                      default: 0
    t.integer  "cheesiness",                   default: 0
    t.integer  "english_percentage",           default: 0
    t.boolean  "english_subtitle",             default: false
    t.boolean  "official",                     default: false
    t.integer  "youtube_views",      limit: 8
    t.string   "definition"
    t.string   "duration"
    t.string   "dimension"
    t.string   "caption"
    t.boolean  "licensed_content"
    t.date     "upload_date"
    t.integer  "upvotes",            limit: 8
    t.integer  "downvotes",          limit: 8
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

end
