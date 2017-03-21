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

ActiveRecord::Schema.define(:version => 20161023025834) do

  create_table "admins", :force => true do |t|
    t.string   "name",                           :null => false
    t.string   "login",                          :null => false
    t.string   "password_digest",                :null => false
    t.integer  "status",          :default => 1, :null => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "checks", :force => true do |t|
    t.string   "code",                      :null => false
    t.integer  "group",                     :null => false
    t.integer  "category",                  :null => false
    t.string   "name",                      :null => false
    t.string   "file",                      :null => false
    t.integer  "status",     :default => 1, :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "pinyin"
    t.integer  "sort"
    t.integer  "province_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "declares", :force => true do |t|
    t.text     "content",                   :null => false
    t.integer  "status",     :default => 1, :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "districts", :force => true do |t|
    t.string   "name"
    t.string   "pinyin"
    t.integer  "sort"
    t.integer  "city_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mentors", :force => true do |t|
    t.string   "name",                       :null => false
    t.integer  "gender",      :default => 1, :null => false
    t.integer  "nation",                     :null => false
    t.integer  "id_type",     :default => 1, :null => false
    t.string   "id_number",                  :null => false
    t.string   "mobile",                     :null => false
    t.string   "email",                      :null => false
    t.integer  "province_id",                :null => false
    t.integer  "city_id",                    :null => false
    t.integer  "district_id",                :null => false
    t.string   "work_unit",                  :null => false
    t.string   "telephone"
    t.integer  "status",      :default => 1, :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "provinces", :force => true do |t|
    t.string   "name"
    t.string   "pinyin"
    t.integer  "sort"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.integer  "mentor_id",                    :null => false
    t.string   "name",                         :null => false
    t.integer  "gender",        :default => 1, :null => false
    t.integer  "nation",                       :null => false
    t.integer  "id_type",       :default => 1, :null => false
    t.string   "id_number",                    :null => false
    t.string   "other"
    t.integer  "province_id",                  :null => false
    t.integer  "city_id",                      :null => false
    t.integer  "district_id",                  :null => false
    t.string   "school",                       :null => false
    t.string   "grade",                        :null => false
    t.string   "guardian_name",                :null => false
    t.string   "guardianship",                 :null => false
    t.string   "mobile",                       :null => false
    t.string   "email",                        :null => false
    t.integer  "status",        :default => 1, :null => false
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

end
