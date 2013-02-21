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

ActiveRecord::Schema.define(:version => 20130220162246) do

  create_table "comments", :force => true do |t|
    t.text     "comment"
    t.string   "user"
    t.integer  "doodle_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["doodle_id"], :name => "index_comments_on_doodle_id"

  create_table "doodles", :force => true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "street_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "doodles", ["street_id"], :name => "index_doodles_on_street_id"

  create_table "pydwgns", :force => true do |t|
    t.string   "name"
    t.float    "value"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "ward_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "pydwgns", ["ward_id"], :name => "index_pydwgns_on_ward_id"

  create_table "street_values", :force => true do |t|
    t.datetime "recorded"
    t.integer  "street_id"
    t.float    "dog_foul"
    t.float    "vandalism"
    t.float    "graffiti"
    t.float    "weeds"
    t.float    "detritus"
    t.float    "fly_posting"
    t.float    "bin_count"
    t.float    "number_overflowing"
    t.float    "smoking"
    t.float    "drinks"
    t.float    "confectionary"
    t.float    "fast_food"
    t.float    "pedestrian_individual"
    t.float    "business"
    t.float    "domestic"
    t.float    "construction"
    t.float    "animal_faeces"
    t.float    "other"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "street_values", ["street_id"], :name => "index_street_values_on_street_id"

  create_table "streets", :force => true do |t|
    t.string   "name"
    t.string   "postcode"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "ward_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "streets", ["ward_id"], :name => "index_streets_on_ward_id"

  create_table "votes", :force => true do |t|
    t.boolean  "is_vandalism"
    t.integer  "doodle_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "votes", ["doodle_id"], :name => "index_votes_on_doodle_id"

  create_table "ward_values", :force => true do |t|
    t.datetime "recorded"
    t.integer  "ward_id"
    t.float    "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "ward_values", ["ward_id"], :name => "index_ward_values_on_ward_id"

  create_table "wards", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
