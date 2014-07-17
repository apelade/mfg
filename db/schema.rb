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

ActiveRecord::Schema.define(version: 20140716033143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: true do |t|
    t.text     "name"
    t.text     "contact_info"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.text     "details"
    t.integer  "total_cents"
    t.integer  "order_id"
    t.integer  "stock_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invoices", ["order_id"], name: "index_invoices_on_order_id", using: :btree
  add_index "invoices", ["stock_item_id"], name: "index_invoices_on_stock_item_id", using: :btree

  create_table "orders", force: true do |t|
    t.text     "status"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree

  create_table "stock_items", force: true do |t|
    t.string   "name"
    t.string   "model"
    t.text     "description"
    t.boolean  "legal_in_all_states"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
