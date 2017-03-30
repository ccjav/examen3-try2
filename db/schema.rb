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

ActiveRecord::Schema.define(version: 20170330165718) do

  create_table "bookings", force: :cascade do |t|
    t.integer  "flight_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "num_booking"
    t.integer  "total"
  end

  create_table "flights", force: :cascade do |t|
    t.string   "num_flight"
    t.date     "date"
    t.time     "depart"
    t.string   "from"
    t.string   "to"
    t.integer  "duration"
    t.integer  "cost"
    t.integer  "passengers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string   "from"
    t.string   "to"
    t.date     "date"
    t.integer  "passengers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_user_bookings_on_booking_id"
    t.index ["user_id"], name: "index_user_bookings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
