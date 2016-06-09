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

ActiveRecord::Schema.define(version: 20160608213654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "follows", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "astronaut_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["astronaut_id"], name: "index_follows_on_astronaut_id", using: :btree
    t.index ["user_id"], name: "index_follows_on_user_id", using: :btree
  end

  create_table "posts", force: :cascade do |t|
    t.string   "content"
    t.integer  "astronaut_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "image_url"
    t.string   "video_url"
    t.index ["astronaut_id"], name: "index_posts_on_astronaut_id", using: :btree
  end

  create_table "space_tags", force: :cascade do |t|
    t.float    "polar"
    t.float    "azimuth"
    t.float    "radius"
    t.string   "relational_body"
    t.string   "units"
    t.integer  "post_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["post_id"], name: "index_space_tags_on_post_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.boolean  "astronaut",       default: false
    t.string   "email"
    t.boolean  "confirmed",       default: false
    t.string   "password_digest"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "email_token"
  end

  add_foreign_key "space_tags", "posts"
end
