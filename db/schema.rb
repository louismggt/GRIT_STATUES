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

ActiveRecord::Schema.define(version: 2019_11_18_145257) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rentals", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.text "description"
    t.bigint "user_id"
    t.bigint "statue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["statue_id"], name: "index_rentals_on_statue_id"
    t.index ["user_id"], name: "index_rentals_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "stars"
    t.bigint "user_id"
    t.bigint "statues_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["statues_id"], name: "index_reviews_on_statues_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "statues", force: :cascade do |t|
    t.string "category"
    t.integer "surface"
    t.text "description"
    t.string "name"
    t.integer "price"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_statues_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
  end

  add_foreign_key "rentals", "statues"
  add_foreign_key "rentals", "users"
  add_foreign_key "reviews", "statues", column: "statues_id"
  add_foreign_key "reviews", "users"
  add_foreign_key "statues", "users"
end
