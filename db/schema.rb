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

ActiveRecord::Schema.define(version: 20130905213121) do

  create_table "home_pictures", force: true do |t|
    t.string   "name"
    t.integer  "home_id"
    t.string   "source"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "homes", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vote_tally", default: 0
  end

  create_table "space_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "space_pictures", force: true do |t|
    t.string   "name"
    t.string   "source"
    t.integer  "space_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "space_votes", force: true do |t|
    t.integer  "user_id"
    t.integer  "space_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spaces", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "size"
    t.integer  "home_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "space_vote_tally", default: 0
  end

  create_table "thoughts", force: true do |t|
    t.text     "text"
    t.integer  "user_id"
    t.integer  "space_picture_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "home_id"
  end

end
