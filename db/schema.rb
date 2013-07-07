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

ActiveRecord::Schema.define(version: 20130704123611) do

  create_table "room_searches", force: true do |t|
    t.integer  "search_id"
    t.integer  "adults"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "room_searches", ["search_id"], name: "index_room_searches_on_search_id"

  create_table "searches", force: true do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.integer  "shop_id"
    t.date     "check_in_at"
    t.date     "check_out_at"
    t.string   "keyword"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "searches", ["item_id"], name: "index_searches_on_item_id"
  add_index "searches", ["shop_id"], name: "index_searches_on_shop_id"
  add_index "searches", ["user_id"], name: "index_searches_on_user_id"

  create_table "users", force: true do |t|
    t.integer  "profile_id"
    t.string   "profile_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["profile_id", "profile_type"], name: "index_users_on_profile_id_and_profile_type"

end
