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

ActiveRecord::Schema.define(version: 20130915005913) do

  create_table "grips", force: true do |t|
    t.integer  "grip_id"
    t.string   "name"
    t.integer  "shot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hands", force: true do |t|
    t.integer  "hand_id"
    t.string   "name"
    t.integer  "shot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.integer  "player_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", force: true do |t|
    t.string   "name"
    t.integer  "shot_id"
    t.integer  "hand_id"
    t.integer  "grip_id"
    t.integer  "spin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shots", force: true do |t|
    t.integer  "shot_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spins", force: true do |t|
    t.integer  "spin_id"
    t.string   "name"
    t.integer  "shot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "strokes", force: true do |t|
    t.integer  "shot_id"
    t.integer  "hand_id"
    t.integer  "grip_id"
    t.integer  "spin_id"
    t.string   "link"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
