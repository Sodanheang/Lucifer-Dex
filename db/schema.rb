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

ActiveRecord::Schema.define(version: 2021_10_06_193044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tokens", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "symbol"
    t.string "info"
    t.string "address"
    t.string "divisor"
  end

  create_table "wallet_tokens", force: :cascade do |t|
    t.bigint "wallet_id"
    t.bigint "token_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["token_id"], name: "index_wallet_tokens_on_token_id"
    t.index ["wallet_id"], name: "index_wallet_tokens_on_wallet_id"
  end

  create_table "wallets", force: :cascade do |t|
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "wallet_tokens", "tokens"
  add_foreign_key "wallet_tokens", "wallets"
end
