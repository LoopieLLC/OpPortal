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

ActiveRecord::Schema.define(version: 2018_09_18_212352) do

  create_table "admin_stats", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "total_num_washers"
    t.integer "total_num_loads"
    t.integer "num_active_washers"
  end

  create_table "admins", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "address"
    t.string "phone"
    t.text "insurance"
    t.string "license_plate"
    t.date "car_year"
    t.string "car_make"
    t.string "car_model"
    t.string "car_color"
    t.string "driver_license_img"
    t.integer "current_loads"
    t.date "start_date"
    t.integer "status"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loads", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "washer_id"
    t.integer "client_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "washers", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "firstname"
    t.string "lastname"
    t.string "phone"
    t.string "email"
    t.string "address"
    t.integer "status"
    t.integer "max_loads"
    t.integer "current_loads"
    t.text "machine_description"
    t.date "start_date"
    t.integer "total_loads_completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
