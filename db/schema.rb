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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2018_10_19_011057) do
=======
ActiveRecord::Schema.define(version: 2018_10_18_233916) do
>>>>>>> 450ed84dfbdee92e2de9fe2929ea79cf3eed7672

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admins", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["username"], name: "index_admins_on_username", unique: true
  end

  create_table "available_zip_codes", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "username"
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "phone"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.text "insurance_info"
    t.string "vin"
    t.string "license_plate"
    t.string "car_year"
    t.string "car_make"
    t.string "car_model"
    t.string "car_color"
    t.string "license_image"
    t.text "additional_information"
    t.integer "current_loads"
    t.integer "driving_status"
    t.integer "confirmation_status"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.bigint "users_id"
    t.index ["email"], name: "index_drivers_on_email", unique: true
    t.index ["username"], name: "index_drivers_on_username", unique: true
    t.index ["users_id"], name: "index_drivers_on_users_id"
  end

  create_table "loads", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "washer_id"
    t.integer "driver_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "email"
    t.string "firstname"
    t.string "lastname"
    t.integer "confirmation_status"
    t.integer "role"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "zip_code"
    t.bigint "washers_id"
    t.bigint "drivers_id"
    t.index ["drivers_id"], name: "index_users_on_drivers_id"
    t.index ["washers_id"], name: "index_users_on_washers_id"
  end

  create_table "washers", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "username"
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "phone"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.text "machine_description"
    t.integer "washing_status"
    t.integer "confirmation_status"
    t.integer "max_loads"
    t.integer "current_loads"
    t.integer "total_loads_completed"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.bigint "users_id"
    t.index ["email"], name: "index_washers_on_email", unique: true
    t.index ["username"], name: "index_washers_on_username", unique: true
    t.index ["users_id"], name: "index_washers_on_users_id"
  end

<<<<<<< HEAD
  add_foreign_key "drivers", "users", column: "users_id"
  add_foreign_key "users", "drivers", column: "drivers_id", on_delete: :cascade
  add_foreign_key "users", "washers", column: "washers_id", on_delete: :cascade
  add_foreign_key "washers", "users", column: "users_id"
=======
  add_foreign_key "users", "drivers", on_delete: :cascade
  add_foreign_key "users", "washers", on_delete: :cascade
>>>>>>> 450ed84dfbdee92e2de9fe2929ea79cf3eed7672
end
