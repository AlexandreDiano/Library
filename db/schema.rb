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

ActiveRecord::Schema.define(version: 2021_08_10_131552) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.string "summary"
    t.string "publishing_company"
    t.string "language"
    t.string "author"
    t.integer "total_amount"
    t.boolean "available"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "loans", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "profiles_id", null: false
    t.bigint "books_id", null: false
    t.index ["books_id"], name: "index_loans_on_books_id"
    t.index ["profiles_id"], name: "index_loans_on_profiles_id"
  end

  create_table "profile", force: :cascade do |t|
    t.string "cpf"
    t.string "name"
    t.integer "age"
    t.bigint "zip_code"
    t.float "debit"
    t.integer "borrows_amount"
    t.integer "borrows_returned"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "user_type_id", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
    t.index ["user_type_id"], name: "index_profiles_on_user_type_id"
  end

  create_table "user_types", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "loans", "books", column: "books_id"
  add_foreign_key "loans", "profile", column: "profiles_id"
  add_foreign_key "profile", "user_types"
  add_foreign_key "profile", "users"
end
