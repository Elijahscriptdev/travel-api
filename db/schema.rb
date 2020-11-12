# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_12_193653) do

  create_table "bookings", force: :cascade do |t|
    t.integer "travel_information_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["travel_information_id"], name: "index_bookings_on_travel_information_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "transport_companies", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_transport_companies_on_user_id"
  end

  create_table "travel_informations", force: :cascade do |t|
    t.string "routes"
    t.string "bus_type"
    t.integer "price"
    t.boolean "availability"
    t.integer "transport_company_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["transport_company_id"], name: "index_travel_informations_on_transport_company_id"
    t.index ["user_id"], name: "index_travel_informations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bookings", "travel_informations"
  add_foreign_key "bookings", "users"
  add_foreign_key "transport_companies", "users"
  add_foreign_key "travel_informations", "transport_companies"
  add_foreign_key "travel_informations", "users"
end
