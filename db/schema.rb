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

ActiveRecord::Schema.define(version: 20170218075404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "citext"

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "access_token"
    t.string   "refresh_token"
    t.string   "uid"
    t.string   "provider"
    t.citext   "email"
    t.citext   "nickname"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_picture"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["access_token"], name: "index_identities_on_access_token", using: :btree
    t.index ["email"], name: "index_identities_on_email", using: :btree
    t.index ["provider"], name: "index_identities_on_provider", using: :btree
    t.index ["refresh_token"], name: "index_identities_on_refresh_token", using: :btree
    t.index ["uid"], name: "index_identities_on_uid", using: :btree
    t.index ["user_id"], name: "index_identities_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.citext   "email",                               null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_picture"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.citext   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "identities", "users"
end
