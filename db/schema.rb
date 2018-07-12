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

ActiveRecord::Schema.define(version: 20180323074026) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ais_trackings", force: :cascade do |t|
    t.float "latitude"
    t.float "longtitude"
    t.integer "heading"
    t.float "speed_over_ground"
    t.datetime "last_ais_updated_at"
    t.integer "nav_status_code"
    t.integer "vessel_id"
    t.float "course"
    t.integer "collection_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ais_vessal_destinations", force: :cascade do |t|
    t.integer "vessel_id"
    t.string "destination"
    t.float "draught"
    t.datetime "eta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "port_vessels", force: :cascade do |t|
    t.integer "port_id"
    t.integer "vessel_id"
    t.datetime "last_position_updated_at"
    t.integer "nav_status_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vessels", force: :cascade do |t|
    t.integer "status"
    t.string "mmsi"
    t.string "imo"
    t.string "name"
    t.string "callsign"
    t.string "vessel_type"
    t.string "vessel_class"
    t.integer "company_id"
    t.integer "line_id"
    t.integer "raw_data"
    t.string "slug"
    t.boolean "active"
    t.jsonb "hello"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "new_column"
  end

end
