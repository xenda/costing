# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100404222058) do

  create_table "activities", :force => true do |t|
    t.string   "name"
    t.integer  "package_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "package_activities", :force => true do |t|
    t.integer  "package_id"
    t.integer  "activity_id"
    t.decimal  "days",        :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "packages", :force => true do |t|
    t.string   "name"
    t.integer  "proposal_id"
    t.decimal  "total",                      :precision => 10, :scale => 3
    t.decimal  "variable_cost",              :precision => 10, :scale => 3
    t.decimal  "fixed_cost",                 :precision => 10, :scale => 3
    t.decimal  "profit_margin",              :precision => 10, :scale => 3
    t.decimal  "negotiation_margin",         :precision => 10, :scale => 3
    t.decimal  "markup",                     :precision => 10, :scale => 3
    t.decimal  "sales_tax",                  :precision => 10, :scale => 3
    t.decimal  "price_reduction",            :precision => 10, :scale => 3
    t.decimal  "fixed_cost_percent",         :precision => 5,  :scale => 3
    t.decimal  "profit_margin_percent",      :precision => 5,  :scale => 3
    t.decimal  "negotiation_margin_percent", :precision => 5,  :scale => 3
    t.decimal  "sales_tax_percent",          :precision => 5,  :scale => 3
    t.decimal  "price_reduction_percent",    :precision => 5,  :scale => 3
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "days",                       :precision => 10, :scale => 0
  end

  create_table "proposals", :force => true do |t|
    t.string   "client_name"
    t.datetime "proposed_at"
    t.integer  "user_id"
    t.decimal  "total",                      :precision => 10, :scale => 3
    t.decimal  "variable_cost",              :precision => 10, :scale => 3
    t.decimal  "fixed_cost",                 :precision => 10, :scale => 3
    t.decimal  "profit_margin",              :precision => 10, :scale => 3
    t.decimal  "negotiation_margin",         :precision => 10, :scale => 3
    t.decimal  "markup",                     :precision => 10, :scale => 3
    t.decimal  "sales_tax",                  :precision => 10, :scale => 3
    t.decimal  "price_reduction",            :precision => 10, :scale => 3
    t.decimal  "fixed_cost_percent",         :precision => 5,  :scale => 3
    t.decimal  "profit_margin_percent",      :precision => 5,  :scale => 3
    t.decimal  "negotiation_margin_percent", :precision => 5,  :scale => 3
    t.decimal  "sales_tax_percent",          :precision => 5,  :scale => 3
    t.decimal  "price_reduction_percent",    :precision => 5,  :scale => 3
    t.integer  "lock_version",                                              :default => 0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "days",                       :precision => 10, :scale => 0
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.decimal  "cost_per_hour", :precision => 6, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
