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

ActiveRecord::Schema.define(version: 2018_12_20_095832) do

  create_table "artists", force: :cascade do |t|
    t.string "artist_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "asiatos", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer "user_id"
    t.integer "cd_id"
    t.integer "cd_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cds", force: :cascade do |t|
    t.string "cd_title"
    t.string "cd_image_id"
    t.string "cd_genre"
    t.integer "cd_price"
    t.integer "cd_stock"
    t.string "cd_label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "favorite_artist"
  end

  create_table "discs", force: :cascade do |t|
    t.integer "disc_number"
    t.integer "cd_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.date "event_day"
    t.string "event_title"
    t.string "event_image_id"
    t.string "event_prefectures"
    t.string "event_city"
    t.string "event_address", default: "東京都"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musics", force: :cascade do |t|
    t.string "music_title"
    t.integer "music_number"
    t.integer "disc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "artist_id"
  end

  create_table "performers", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchase_histories", force: :cascade do |t|
    t.integer "user_id"
    t.string "send_address"
    t.string "send_name"
    t.string "send_postal_code"
    t.string "send_status", default: "受注", null: false
    t.string "purchase_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchase_items", force: :cascade do |t|
    t.integer "purchase_history_id"
    t.integer "purchase_cd_price"
    t.integer "purchase_cd_quantity"
    t.integer "cd_id"
    t.string "purchase_cd_title"
    t.string "purchase_cd_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "first_name"
    t.string "last_name"
    t.string "kana_first_name"
    t.string "kana_last_name"
    t.string "nick_name"
    t.string "postal_code"
    t.string "address"
    t.string "phone_number"
    t.string "user_image_id"
    t.datetime "deleted_at"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
