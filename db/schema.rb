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

ActiveRecord::Schema.define(version: 20140426132641) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.string   "street_name"
    t.string   "landmark"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "property_id"
  end

  create_table "facilities", force: true do |t|
    t.boolean  "gym"
    t.boolean  "lift"
    t.boolean  "swimming_pool"
    t.integer  "parking"
    t.integer  "ac"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interested_people", force: true do |t|
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.integer  "property_type"
    t.integer  "bathroom"
    t.integer  "rent"
    t.integer  "deposit"
    t.integer  "furnishing"
    t.integer  "lease_type"
    t.integer  "build_area"
    t.date     "available_from"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "interested_people_count"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "facility_id"
    t.integer  "property_location_id"
  end

  create_table "property_locations", force: true do |t|
    t.string   "area"
    t.integer  "city"
    t.integer  "state"
    t.integer  "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
