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

ActiveRecord::Schema.define(:version => 20130414070318) do

  create_table "courses", :force => true do |t|
    t.text     "title"
    t.integer  "cost"
    t.text     "requirements"
    t.string   "course_code"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "scqf_level"
    t.string   "qualification_type"
    t.boolean  "pt_ft"
    t.string   "education_type"
    t.integer  "establishment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["establishment_id"], :name => "index_courses_on_establishment_id"

  create_table "establishments", :force => true do |t|
    t.string   "establishment_name"
    t.float    "lat"
    t.float    "long"
    t.string   "address"
    t.string   "post_code"
    t.string   "email"
    t.string   "phone"
    t.string   "education_type"
    t.string   "website_url"
    t.integer  "official_establishment_uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
