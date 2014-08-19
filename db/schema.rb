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

ActiveRecord::Schema.define(version: 20140819004645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "data_src_lnks", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_srcs", force: true do |t|
    t.string   "dataSrcID",  null: false
    t.string   "authors"
    t.string   "title",      null: false
    t.string   "year"
    t.string   "journal"
    t.string   "volCity"
    t.string   "issueState"
    t.string   "startPage"
    t.string   "endPage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "derive_codes", force: true do |t|
    t.string   "derivID",    null: false
    t.string   "deriveDecs", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "food_descs", force: true do |t|
    t.string   "ndbID",                               null: false
    t.string   "fdGrpID",                             null: false
    t.string   "longDesc",                            null: false
    t.string   "shortDesc",                           null: false
    t.string   "comName"
    t.string   "manufacName"
    t.string   "surveyIND"
    t.string   "refDesc"
    t.integer  "refusePCT"
    t.string   "sciName"
    t.decimal  "nFactor",     precision: 6, scale: 2
    t.decimal  "proFactor",   precision: 6, scale: 2
    t.decimal  "fatFactor",   precision: 6, scale: 2
    t.decimal  "choFactor",   precision: 6, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "food_group_descriptions", force: true do |t|
    t.string   "fdGrpID",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "desc"
  end

  create_table "footnotes", force: true do |t|
    t.string   "ndbID",      null: false
    t.string   "footntID",   null: false
    t.string   "footntType", null: false
    t.string   "nutrID"
    t.string   "footntText", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lang_descs", force: true do |t|
    t.string   "factorID",    null: false
    t.string   "description", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languals", force: true do |t|
    t.string   "ndbID",      null: false
    t.string   "factorID",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nut_data", force: true do |t|
    t.string   "ndbID",                               null: false
    t.string   "nutrID",                              null: false
    t.decimal  "nutrVal",    precision: 13, scale: 3, null: false
    t.decimal  "numDataPts",                          null: false
    t.decimal  "stdError",   precision: 11, scale: 3
    t.string   "srcID",                               null: false
    t.string   "deriveID"
    t.string   "refNdbID"
    t.string   "addNutrIND"
    t.integer  "numStudies"
    t.decimal  "min",        precision: 13, scale: 3
    t.decimal  "max",        precision: 13, scale: 3
    t.decimal  "lowEB",      precision: 13, scale: 3
    t.decimal  "upEB",       precision: 13, scale: 3
    t.integer  "df"
    t.string   "addModDate"
    t.string   "statCmt"
    t.string   "ccIND"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nutr_defs", force: true do |t|
    t.string   "nutrID",     null: false
    t.string   "units",      null: false
    t.string   "tagName"
    t.string   "nutrDesc",   null: false
    t.string   "numDec",     null: false
    t.string   "srOrder",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "src_codes", force: true do |t|
    t.string   "srcID",      null: false
    t.string   "srcDecs",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weights", force: true do |t|
    t.string   "ndbID",                               null: false
    t.string   "seq",                                 null: false
    t.decimal  "amount",     precision: 8,  scale: 3, null: false
    t.string   "msreDesc",                            null: false
    t.decimal  "gmWgt",      precision: 8,  scale: 1, null: false
    t.integer  "numDataPts"
    t.decimal  "stdDev",     precision: 10, scale: 3
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
