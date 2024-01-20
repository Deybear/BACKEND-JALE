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

ActiveRecord::Schema[7.1].define(version: 2024_01_11_020337) do
  create_table "categories", force: :cascade do |t|
    t.string "category_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_categories", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_event_categories_on_category_id"
    t.index ["event_id"], name: "index_event_categories_on_event_id"
  end

  create_table "event_locations", force: :cascade do |t|
    t.string "event_lat"
    t.string "event_lon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_event_locations_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "event_name"
    t.string "event_desc"
    t.float "event_cost"
    t.string "event_email"
    t.string "event_photo"
    t.string "event_phone"
    t.string "event_website"
    t.string "event_address"
    t.date "event_date_start"
    t.time "event_time_start"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "place_id"
    t.index ["place_id"], name: "index_photos_on_place_id"
  end

  create_table "place_categories", force: :cascade do |t|
    t.integer "place_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_place_categories_on_category_id"
    t.index ["place_id"], name: "index_place_categories_on_place_id"
  end

  create_table "place_locations", force: :cascade do |t|
    t.string "place_lat"
    t.string "place_lon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_place_locations_on_user_id"
  end

  create_table "place_reviews", force: :cascade do |t|
    t.integer "place_id", null: false
    t.integer "review_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_place_reviews_on_place_id"
    t.index ["review_id"], name: "index_place_reviews_on_review_id"
    t.index ["user_id"], name: "index_place_reviews_on_user_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "place_name"
    t.string "place_desc"
    t.float "place_cost"
    t.string "place_email"
    t.integer "place_score"
    t.string "place_phone"
    t.string "place_website"
    t.string "place_address"
    t.time "place_time_open"
    t.time "place_time_close"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "review_title"
    t.string "review_desc"
    t.integer "review_score"
    t.boolean "review_display"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tokens", force: :cascade do |t|
    t.string "token_code"
    t.datetime "token_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_tokens_on_user_id"
  end

  create_table "user_tours", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "place_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_user_tours_on_place_id"
    t.index ["user_id"], name: "index_user_tours_on_user_id"
  end

  create_table "user_types", force: :cascade do |t|
    t.string "user_type_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "user_lastname"
    t.string "user_email"
    t.string "password_digest"
    t.date "user_birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_type_id"
    t.index ["user_type_id"], name: "index_users_on_user_type_id"
  end

  add_foreign_key "event_categories", "categories"
  add_foreign_key "event_categories", "events"
  add_foreign_key "event_locations", "users"
  add_foreign_key "photos", "places"
  add_foreign_key "place_categories", "categories"
  add_foreign_key "place_categories", "places"
  add_foreign_key "place_locations", "users"
  add_foreign_key "place_reviews", "places"
  add_foreign_key "place_reviews", "reviews"
  add_foreign_key "place_reviews", "users"
  add_foreign_key "tokens", "users"
  add_foreign_key "user_tours", "places"
  add_foreign_key "user_tours", "users"
  add_foreign_key "users", "user_types"
end
