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

ActiveRecord::Schema.define(:version => 20121116063727) do

  create_table "project_metadata", :force => true do |t|
    t.integer  "project_id"
    t.string   "sub_project_name"
    t.string   "ci_job_name"
    t.string   "os_name"
    t.string   "host_name"
    t.string   "browser"
    t.string   "type_of_enviornment"
    t.date     "date_of_execution"
    t.string   "user_timezone"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "type_of_test"
    t.string   "authorization_level"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "test_records", :force => true do |t|
    t.integer  "project_metadatum_id"
    t.string   "class_name"
    t.integer  "number_of_tests"
    t.integer  "number_of_errors"
    t.integer  "number_of_failures"
    t.string   "time_taken"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

end
