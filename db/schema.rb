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

ActiveRecord::Schema.define(version: 20150408000711) do

  create_table "languages", force: :cascade do |t|
    t.string   "language_name", limit: 255
    t.string   "language_en",   limit: 255
    t.string   "language_code", limit: 2
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "sentence_translations", force: :cascade do |t|
    t.integer  "sentence_id", limit: 4
    t.integer  "language_id", limit: 4
    t.integer  "user_id",     limit: 4
    t.string   "translation", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "sentences", force: :cascade do |t|
    t.integer  "structure_id",     limit: 4
    t.integer  "language_id",      limit: 4
    t.integer  "user_id",          limit: 4
    t.string   "sentence",         limit: 255
    t.string   "phonetic_version", limit: 255
    t.integer  "score",            limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "structures", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.integer  "user_id",         limit: 4
    t.string   "example",         limit: 255
    t.string   "romaji",          limit: 255
    t.string   "english_meaning", limit: 255
    t.string   "formation",       limit: 255
    t.integer  "jlpt_level",      limit: 4
    t.text     "notes",           limit: 65535
    t.string   "related",         limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

end
