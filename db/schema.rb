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

ActiveRecord::Schema.define(version: 2022_07_01_004643) do

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.integer "account_number"
    t.string "password"
    t.string "location"
    t.string "account_type"
    t.integer "art_id"
    t.integer "buyer_id"
    t.index ["art_id"], name: "index_accounts_on_art_id"
    t.index ["buyer_id"], name: "index_accounts_on_buyer_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "avatar"
    t.string "location"
    t.string "email"
    t.string "phone"
    t.string "genre"
  end

  create_table "arts", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.string "genre"
    t.string "location"
    t.string "link"
    t.datetime "created_at"
    t.integer "artist_id"
    t.index ["artist_id"], name: "index_arts_on_artist_id"
  end

  create_table "buyers", force: :cascade do |t|
    t.string "name"
    t.string "avatar"
    t.string "location"
    t.string "email"
  end

  add_foreign_key "accounts", "arts"
  add_foreign_key "accounts", "buyers"
  add_foreign_key "arts", "artists"
end
