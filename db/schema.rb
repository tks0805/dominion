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

ActiveRecord::Schema.define(version: 20140624060747) do

  create_table "cards", force: true do |t|
    t.string   "card_id"
    t.string   "name"
    t.text     "text"
    t.integer  "cost"
    t.string   "type1"
    t.string   "type2"
    t.string   "image_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lists", force: true do |t|
    t.string   "name"
    t.integer  "card1"
    t.integer  "card2"
    t.integer  "card3"
    t.integer  "card4"
    t.integer  "card5"
    t.integer  "card6"
    t.integer  "card7"
    t.integer  "card8"
    t.integer  "card9"
    t.integer  "card10"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
