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

ActiveRecord::Schema.define(version: 20170718021616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "events", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.text "image_url"
    t.datetime "start_at"
    t.datetime "ends_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "organization_id"
    t.index ["organization_id"], name: "index_events_on_organization_id"
  end

  create_table "events_locations", id: false, force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "location_id", null: false
  end

  create_table "events_users", id: false, force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "user_id", null: false
    t.index ["event_id", "user_id"], name: "index_events_users_on_event_id_and_user_id"
    t.index ["user_id", "event_id"], name: "index_events_users_on_user_id_and_event_id"
  end

  create_table "locations", force: :cascade do |t|
    t.text "name"
    t.text "address"
    t.text "address2"
    t.text "city"
    t.text "province"
    t.text "country"
    t.text "lat"
    t.text "lon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "user"
    t.text "email"
    t.text "name"
    t.text "phone"
    t.text "address"
    t.text "city"
    t.text "province"
    t.text "country"
    t.text "postal_code"
    t.text "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "kind"
  end

  add_foreign_key "events", "organizations"
end
