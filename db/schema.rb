# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150807070315) do

  create_table "rz_oaouths", force: :cascade do |t|
    t.string   "authorization_uri",    limit: 255
    t.string   "token_credential_uri", limit: 255
    t.string   "redirect_uri",         limit: 255
    t.string   "client_id",            limit: 255
    t.string   "client_secret",        limit: 255
    t.string   "scope",                limit: 255
    t.string   "code",                 limit: 255
    t.string   "state",                limit: 255
    t.string   "expires_in",           limit: 255
    t.datetime "update"
    t.string   "access_token",         limit: 255
    t.string   "token_type",           limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "rz_oauth2s", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
