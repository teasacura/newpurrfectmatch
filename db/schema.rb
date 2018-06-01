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

ActiveRecord::Schema.define(version: 2018_06_01_025022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cats", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "description"
    t.string "location"
    t.string "breed"
    t.string "temperament"
    t.string "sociability"
    t.string "image_url", default: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Portrait_Placeholder.png/120px-Portrait_Placeholder.png"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "age"
    t.string "description"
    t.string "location"
    t.integer "min_age_pref"
    t.integer "max_age_pref"
    t.string "breed_pref"
    t.string "temperament_pref"
    t.integer "num_of_cats"
    t.boolean "admin", default: false
    t.string "image_url", default: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Portrait_Placeholder.png/120px-Portrait_Placeholder.png"
  end

  create_table "person_cats", force: :cascade do |t|
    t.bigint "person_id"
    t.bigint "cat_id"
    t.index ["cat_id"], name: "index_person_cats_on_cat_id"
    t.index ["person_id"], name: "index_person_cats_on_person_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "description"
    t.string "location"
    t.string "breed"
    t.string "temperament"
    t.string "sociability"
    t.integer "min_age_pref"
    t.integer "max_age_pref"
    t.string "breed_pref"
    t.string "temperament_pref"
    t.integer "num_of_cats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
