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

ActiveRecord::Schema.define(:version => 20130410133215) do

  create_table "courses", :force => true do |t|
    t.text     "name"
    t.integer  "cost"
    t.text     "requirements"
    t.string   "course_code"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "scqf_level"
    t.string   "qualification_type"
    t.boolean  "pt_ft"
    t.string   "education_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "establishments", :force => true do |t|
    t.string   "name"
    t.float    "lat"
    t.float    "long"
    t.string   "address"
    t.string   "provider_uid"
    t.integer  "col_low"
    t.integer  "col_high"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
