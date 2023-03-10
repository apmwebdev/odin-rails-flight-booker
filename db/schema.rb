# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_09_170208) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airports", primary_key: "code", id: :string, force: :cascade do |t|
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_airports_on_code", unique: true
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "flight_id", null: false
    t.integer "number_of_passengers", limit: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flight_id"], name: "index_bookings_on_flight_id"
  end

  create_table "flights", force: :cascade do |t|
    t.string "departure_airport_code", null: false
    t.string "destination_airport_code", null: false
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "departure_date"
    t.time "departure_time"
    t.index ["departure_airport_code"], name: "index_flights_on_departure_airport_code"
    t.index ["destination_airport_code"], name: "index_flights_on_destination_airport_code"
  end

  create_table "passengers", force: :cascade do |t|
    t.bigint "booking_id", null: false
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_passengers_on_booking_id"
  end

  add_foreign_key "bookings", "flights"
  add_foreign_key "flights", "airports", column: "departure_airport_code", primary_key: "code"
  add_foreign_key "flights", "airports", column: "destination_airport_code", primary_key: "code"
  add_foreign_key "passengers", "bookings"
end
