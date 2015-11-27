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

ActiveRecord::Schema.define(version: 20151126182613) do

  create_table "massinputs", force: true do |t|
    t.string   "vet_last_name"
    t.string   "vet_first_name"
    t.date     "dob"
    t.string   "ssn"
    t.string   "facility_name"
    t.string   "facility_type_desc"
    t.string   "vha_eligibility"
    t.string   "vash_program"
    t.date     "vash_application_received"
    t.date     "vash_voucher_recieved_date"
    t.date     "vash_exp_date"
    t.text     "vash_comments"
    t.string   "ssvf_assigned_provider"
    t.string   "housing_plan"
    t.string   "apartment_source"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
