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

ActiveRecord::Schema.define(version: 20170112013704) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer  "customer_code"
    t.integer  "nit"
    t.string   "customer_name"
    t.string   "company_name"
    t.string   "country"
    t.string   "department_or_state"
    t.string   "address"
    t.integer  "telephone_1"
    t.integer  "telephone_2"
    t.integer  "mobile_1"
    t.integer  "mobile_2"
    t.string   "email"
    t.string   "web_page"
    t.string   "transportation"
    t.binary   "credit_in_quetzales"
    t.integer  "discount_percentage"
    t.text     "observations"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "families", force: :cascade do |t|
    t.string   "family"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_in_warehouses", force: :cascade do |t|
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "product_code"
    t.string   "barcode"
    t.string   "product_name"
    t.text     "description"
    t.date     "purchase_date"
    t.binary   "cost_in_quetzales"
    t.binary   "sale_price"
    t.integer  "percentage_in_sale"
    t.integer  "number_of_articles"
    t.string   "name_supplier"
    t.string   "name_brand"
    t.string   "name_family"
    t.string   "name_location_in_warehouse"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.integer  "supplier_code"
    t.string   "invoice_series"
    t.integer  "invoice_number"
    t.date     "purchase_date"
    t.binary   "total_purchase"
    t.string   "observations"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.integer  "supplier_code"
    t.integer  "nit"
    t.string   "supplier_name"
    t.string   "company_name"
    t.string   "country"
    t.string   "department_or_state"
    t.string   "full_address"
    t.integer  "telephone_1"
    t.integer  "telephone_2"
    t.integer  "mobile_1"
    t.integer  "mobile_2"
    t.string   "email"
    t.string   "web_page"
    t.text     "observations"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "transportations", force: :cascade do |t|
    t.string   "transportation"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "legal_representative"
    t.integer  "nit"
    t.string   "company_name"
    t.string   "business_name"
    t.integer  "phone"
    t.string   "company_address"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
