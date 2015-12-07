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

ActiveRecord::Schema.define(version: 20151207010836) do

  create_table "arrangements", force: :cascade do |t|
    t.datetime "volunteering_time"
    t.integer  "volunteer_id"
    t.integer  "opportunity_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "arrangements", ["opportunity_id"], name: "index_arrangements_on_opportunity_id"
  add_index "arrangements", ["volunteer_id"], name: "index_arrangements_on_volunteer_id"

  create_table "interests", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interests_volunteers", id: false, force: :cascade do |t|
    t.integer "volunteer_id"
    t.integer "interest_id"
  end

  add_index "interests_volunteers", ["interest_id"], name: "index_interests_volunteers_on_interest_id"
  add_index "interests_volunteers", ["volunteer_id"], name: "index_interests_volunteers_on_volunteer_id"

  create_table "opportunities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "location"
    t.string   "event_time"
    t.string   "contact"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "photo_url"
    t.text     "description"
    t.string   "contact"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
