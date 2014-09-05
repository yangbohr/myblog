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

ActiveRecord::Schema.define(version: 20140820175859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachments", force: true do |t|
    t.string   "file_type"
    t.binary   "attachment"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blogs", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogues", force: true do |t|
    t.string   "title"
    t.string   "company"
    t.date     "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drawings", force: true do |t|
    t.string   "discipline"
    t.integer  "order"
    t.string   "tembec_drawing"
    t.string   "vender"
    t.string   "vendor_drawing_number"
    t.string   "sheet_number"
    t.integer  "revision"
    t.text     "title"
    t.date     "date"
    t.string   "equipment_number"
    t.boolean  "cad"
    t.boolean  "paper"
    t.text     "notes"
    t.boolean  "hanging"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "area"
    t.integer  "original_order"
  end

  create_table "equipment_manuals", force: true do |t|
    t.string   "title"
    t.string   "equipment_number"
    t.string   "company"
    t.string   "model"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "isos", force: true do |t|
    t.string   "title"
    t.string   "tage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "libraries", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "type"
    t.string   "vendor"
    t.text     "description"
    t.text     "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "company"
    t.date     "year"
    t.string   "title"
    t.text     "description"
    t.string   "prepared_by"
    t.string   "area"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "safety_manuals", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "work_orders", force: true do |t|
    t.string   "title"
    t.string   "equipment"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
