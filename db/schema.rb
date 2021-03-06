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

ActiveRecord::Schema.define(version: 20161019200745) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "before_after_data", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "before"
    t.integer  "after"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_before_after_data_on_user_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.text     "behavior"
    t.text     "trigger"
    t.integer  "before"
    t.text     "before_notes"
    t.integer  "after"
    t.text     "after_notes"
    t.boolean  "distraction"
    t.boolean  "soothing"
    t.boolean  "improving"
    t.text     "helpful"
    t.text     "hurtful"
    t.text     "reflection"
    t.text     "victory"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_events_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.text     "user_name"
    t.text     "first_name"
    t.text     "last_name"
    t.text     "email"
    t.string   "password_digest"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "professional_id"
    t.boolean  "is_prof",         default: false
    t.index ["professional_id"], name: "index_users_on_professional_id", using: :btree
  end

  add_foreign_key "events", "users"
end
