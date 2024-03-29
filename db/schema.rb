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

ActiveRecord::Schema.define(:version => 20111010153934) do

  create_table "appointments", :force => true do |t|
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.datetime "scheduled_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", :force => true do |t|
    t.string   "sex"
    t.string   "photo",        :default => "http://t1.stooorage.com/thumbs/1073/4386724_new_user.jpg"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "specialty_id"
  end

  create_table "patients", :force => true do |t|
    t.string   "address"
    t.string   "sex"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version",    :default => 1
  end

  create_table "schedule_plans", :force => true do |t|
    t.boolean  "active"
    t.date     "start_date"
    t.integer  "doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specialties", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.date     "birthdate"
    t.string   "username"
    t.string   "hashed_password"
    t.string   "salt"
    t.integer  "utilizador_id"
    t.string   "utilizador_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "version_logs", :force => true do |t|
    t.string   "table"
    t.integer  "version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workdays", :force => true do |t|
    t.integer  "weekday"
    t.integer  "start"
    t.integer  "end"
    t.integer  "schedule_plan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
