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

ActiveRecord::Schema.define(version: 20161022214133) do

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "line1",       limit: 191, default: "",    null: false
    t.string   "line2",       limit: 191, default: "",    null: false
    t.string   "city",        limit: 191, default: "",    null: false
    t.string   "state",       limit: 191, default: "",    null: false
    t.string   "postal_code", limit: 191, default: "",    null: false
    t.string   "country",     limit: 191, default: "USA", null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "genders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "description", limit: 191, default: "women", null: false
    t.integer  "shelter_id"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "description", limit: 191, default: "", null: false
    t.string   "href",        limit: 191, default: "", null: false
    t.integer  "address_id"
    t.integer  "shelter_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "phone_numbers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "number",      limit: 191, default: "", null: false
    t.integer  "location_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "shelters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "name",        limit: 191,  default: "", null: false
    t.string   "href",        limit: 191,  default: "", null: false
    t.string   "description", limit: 4096, default: "", null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

end
