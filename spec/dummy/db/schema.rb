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

ActiveRecord::Schema.define(:version => 0) do

  create_table "fine_print_agreements", :force => true do |t|
    t.string   "name",                          :null => false
    t.integer  "version"
    t.string   "title",                         :null => false
    t.text     "content",                       :null => false
    t.boolean  "is_latest",  :default => false, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "fine_print_agreements", ["name", "is_latest"], :name => "index_fine_print_agreements_on_name_and_is_latest"
  add_index "fine_print_agreements", ["name"], :name => "index_fine_print_agreements_on_name"

  create_table "fine_print_user_agreements", :force => true do |t|
    t.integer  "agreement_id", :null => false
    t.integer  "user_id",      :null => false
    t.string   "user_type",    :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "fine_print_user_agreements", ["agreement_id"], :name => "index_fine_print_user_agreements_on_agreement_id"
  add_index "fine_print_user_agreements", ["user_id", "user_type", "agreement_id"], :name => "index_fine_print_u_a_on_u_id_and_u_type_and_a_id"

end
