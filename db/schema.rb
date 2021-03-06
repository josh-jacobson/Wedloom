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

ActiveRecord::Schema.define(:version => 20130516160751) do

  create_table "appointments", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "planner_id"
    t.datetime "appointment_time"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "cards", :force => true do |t|
    t.string   "suit"
    t.string   "number"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.date     "wedding_date"
    t.integer  "budget"
    t.integer  "number_of_guests"
    t.string   "wedding_city"
    t.boolean  "booked_venue"
    t.boolean  "booked_catering"
    t.boolean  "booked_photographer"
    t.boolean  "booked_florist"
    t.boolean  "booked_entertainment"
    t.text     "more_info"
  end

  add_index "customers", ["email"], :name => "index_customers_on_email", :unique => true
  add_index "customers", ["reset_password_token"], :name => "index_customers_on_reset_password_token", :unique => true

  create_table "customers_venues", :id => false, :force => true do |t|
    t.integer "customer_id"
    t.integer "venue_id"
  end

  create_table "elements", :force => true do |t|
    t.string   "category"
    t.string   "name"
    t.integer  "fixed_cost"
    t.integer  "variable_cost"
    t.text     "description"
    t.string   "image"
    t.string   "link"
    t.integer  "tier"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "capacity"
    t.integer  "minimum"
    t.string   "tags"
  end

  create_table "loomelements", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "element_id"
    t.string   "notes"
    t.boolean  "inBudget",    :default => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "planners", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.text     "description"
    t.string   "photo"
    t.string   "website"
    t.string   "image1"
    t.string   "image2"
    t.string   "image3"
    t.string   "image4"
    t.string   "image5"
    t.string   "appointlet"
  end

  add_index "planners", ["email"], :name => "index_planners_on_email", :unique => true
  add_index "planners", ["reset_password_token"], :name => "index_planners_on_reset_password_token", :unique => true

  create_table "tips", :force => true do |t|
    t.text     "content"
    t.string   "category"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "food"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "flowers"
    t.string   "entertainment"
    t.string   "photographer"
    t.string   "dress"
  end

  create_table "users_venues", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "venue_id"
  end

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "link"
    t.string   "image"
    t.string   "supporting_images"
    t.integer  "capacity"
    t.integer  "rental_cost"
    t.integer  "cost_per_plate"
    t.integer  "minimum"
    t.string   "tier"
    t.string   "tags"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
