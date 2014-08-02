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

ActiveRecord::Schema.define(version: 20140731003031) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "playdates", force: true do |t|
    t.integer  "user_id"
    t.integer  "puppy_id"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "attendees"
    t.boolean  "email_reminder"
  end

  add_index "playdates", ["puppy_id"], name: "index_playdates_on_puppy_id", using: :btree
  add_index "playdates", ["user_id"], name: "index_playdates_on_user_id", using: :btree

  create_table "puppies", force: true do |t|
    t.string "image", null: false
  end

  create_table "relationships", force: true do |t|
    t.integer  "user_id"
    t.integer  "puppy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["puppy_id"], name: "index_relationships_on_puppy_id", using: :btree
  add_index "relationships", ["user_id"], name: "index_relationships_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string "name",            null: false
    t.string "email",           null: false
    t.string "password_digest", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
