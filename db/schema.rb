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

ActiveRecord::Schema[7.0].define(version: 2022_11_03_121828) do
  create_table "airports", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "flight_id"
    t.integer "number_of_passengers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "start_date_time"
    t.integer "passenger_id"
    t.index ["flight_id"], name: "index_bookings_on_flight_id"
    t.index ["passenger_id"], name: "index_bookings_on_passenger_id"
  end

  create_table "flights", force: :cascade do |t|
    t.integer "departure_airport_id"
    t.integer "arrival_airport_id"
    t.datetime "start_date_time"
    t.integer "flight_duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "booking_id"
    t.integer "passenger_id"
  end

  create_table "passenger_bookings", force: :cascade do |t|
    t.integer "passenger_id"
    t.integer "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "passengers", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "remove_passenger_from_bookings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookings", "passengers"
end
