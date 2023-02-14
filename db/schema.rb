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

ActiveRecord::Schema[7.0].define(version: 2023_02_14_002458) do
  create_table "deliveries", force: :cascade do |t|
    t.string "name"
    t.string "deliver"
    t.string "address"
    t.datetime "arrival_at"
    t.integer "depart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departs", force: :cascade do |t|
    t.string "name"
    t.string "manager"
    t.datetime "depart_begin"
    t.datetime "depart_end"
    t.integer "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "deliveries", "departs"
  add_foreign_key "departs", "routes"
end
