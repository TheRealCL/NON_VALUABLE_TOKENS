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

ActiveRecord::Schema[7.0].define(version: 2022_11_29_224716) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "nvts", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "picture"
    t.string "category"
    t.date "date"
    t.integer "price"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_nvts_on_users_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "status"
    t.text "comment"
    t.bigint "nvts_id"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nvts_id"], name: "index_transactions_on_nvts_id"
    t.index ["users_id"], name: "index_transactions_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "nvts", "users", column: "users_id"
  add_foreign_key "transactions", "nvts", column: "nvts_id"
  add_foreign_key "transactions", "users", column: "users_id"
end
