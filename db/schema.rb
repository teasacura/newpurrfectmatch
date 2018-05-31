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

ActiveRecord::Schema.define(version: 2018_05_30_194123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

  create_table "cats", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "description"
    t.string "location"
    t.string "breed"
    t.string "temperament"
    t.string "sociability"
    t.string "image_url", default: "https://camo.githubusercontent.com/341831200626efe3e0cf83317801fcac2200fbe2/68747470733a2f2f662e636c6f75642e6769746875622e636f6d2f6173736574732f323639323831302f323130343036312f34643839316563302d386637362d313165332d393230322d6637333934306431306632302e706e67"
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
    t.string "image_url", default: "https://camo.githubusercontent.com/341831200626efe3e0cf83317801fcac2200fbe2/68747470733a2f2f662e636c6f75642e6769746875622e636f6d2f6173736574732f323639323831302f323130343036312f34643839316563302d386637362d313165332d393230322d6637333934306431306632302e706e67"
  end

  create_table "person_cats", force: :cascade do |t|
    t.bigint "person_id"
    t.bigint "cat_id"
    t.index ["cat_id"], name: "index_person_cats_on_cat_id"
    t.index ["person_id"], name: "index_person_cats_on_person_id"
  end

end
