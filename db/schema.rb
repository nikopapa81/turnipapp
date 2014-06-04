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

ActiveRecord::Schema.define(version: 20140604133753) do

  create_table "activities", force: true do |t|
    t.string   "activity_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consumptions", force: true do |t|
    t.integer  "item_id"
    t.float    "quantity"
    t.boolean  "waste"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "food_categories", force: true do |t|
    t.string   "category_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "food_items", force: true do |t|
    t.string   "item_name"
    t.integer  "uofm_id"
    t.integer  "category_id"
    t.integer  "avg_exp_days"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchases", force: true do |t|
    t.integer  "item_id"
    t.float    "quantity"
    t.float    "cost"
    t.string   "source"
    t.date     "expiration_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "u_of_ms", force: true do |t|
    t.string   "unit_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
