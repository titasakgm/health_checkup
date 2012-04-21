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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120420152819) do

  create_table "devlogs", :force => true do |t|
    t.string   "url"
    t.text     "problem"
    t.text     "fixing"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", :force => true do |t|
    t.string   "job"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", :force => true do |t|
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prefix1s", :force => true do |t|
    t.string   "prefix1"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prefix2s", :force => true do |t|
    t.string   "prefix2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", :force => true do |t|
    t.string   "section"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", :force => true do |t|
    t.string   "card_type"
    t.string   "card_code"
    t.string   "cid"
    t.integer  "sex"
    t.integer  "prefix1_id"
    t.integer  "prefix2_id"
    t.string   "fname"
    t.string   "lname"
    t.integer  "position_id"
    t.integer  "job_id"
    t.integer  "section_id"
    t.date     "birth_date"
    t.string   "tel"
    t.string   "mobile"
    t.string   "email"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string "username"
    t.string "password_digest"
    t.string "roles"
  end

end
