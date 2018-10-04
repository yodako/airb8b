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

ActiveRecord::Schema.define(version: 2018_09_30_070725) do

  create_table "amenities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "must_item"
    t.integer "wifi"
    t.integer "shampoo"
    t.integer "closet"
    t.integer "television"
    t.integer "heater"
    t.integer "aircon"
    t.integer "breakfast"
    t.integer "pet"
    t.integer "iron"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "filters", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "category", null: false
    t.integer "room_type", null: false
    t.integer "capacity", null: false
    t.integer "bedroom_counter", null: false
    t.float "bathroom_counter", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "room_id", null: false
    t.date "check_in"
    t.date "check_out"
    t.integer "occupancy"
    t.integer "price_per_night"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_reservations_on_room_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "reviews", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "comment"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "kind"
    t.integer "note"
    t.integer "ki"
    t.integer "no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "host_id", null: false
    t.integer "location", null: false
    t.text "post_number", null: false
    t.text "prefecture", null: false
    t.text "city", null: false
    t.string "image"
    t.text "subject", null: false
    t.text "title", null: false
    t.integer "price", null: false
    t.integer "currency", null: false
    t.integer "rule_id"
    t.integer "amenity_id"
    t.integer "filter_id"
    t.text "address"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "rules", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "rule_pet"
    t.integer "rule_smoking"
    t.integer "rule_party"
    t.integer "prior_stair"
    t.integer "prior_noize"
    t.integer "prior_pet"
    t.integer "prior_parking"
    t.integer "prior_sharespace"
    t.integer "prior_security"
    t.integer "prior_guns"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.integer "birthday_year", null: false
    t.integer "birthday_month", null: false
    t.integer "birthday_day", null: false
    t.integer "gender", null: false
    t.integer "language"
    t.integer "currency"
    t.string "address"
    t.string "introduction"
    t.integer "guest_id", null: false
    t.integer "host_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "reservations", "rooms"
  add_foreign_key "reservations", "users"
end
