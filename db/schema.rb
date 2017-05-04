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

ActiveRecord::Schema.define(version: 20170504173314) do

  create_table "admin_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "first_name",      limit: 40
    t.string   "last_name",       limit: 80
    t.string   "email",           limit: 80, default: "", null: false
    t.string   "username",        limit: 40
    t.string   "hashed_password", limit: 80
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.index ["username"], name: "index_admin_users_on_username", using: :btree
  end

  create_table "pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name",       limit: 200
    t.integer  "permalink"
    t.integer  "position"
    t.boolean  "visible",                default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name",       limit: 100
    t.integer  "position"
    t.boolean  "visible",                default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

end
