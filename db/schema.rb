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

ActiveRecord::Schema.define(:version => 20130814202951) do

  create_table "devices", :force => true do |t|
    t.integer  "assigned_user_id"
    t.string   "name"
    t.string   "station_label"
    t.integer  "time_zone_id"
    t.integer  "paging_profile_id"
    t.integer  "corporate_directory_id"
    t.boolean  "allow_provision_retrieval"
    t.string   "device_type"
    t.string   "device_mac_address"
    t.datetime "last_provisioned_time"
    t.string   "last_provisioned_from"
    t.boolean  "allow_device_to_monitor"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "devices", ["assigned_user_id"], :name => "index_devices_on_assigned_user_id"
  add_index "devices", ["corporate_directory_id"], :name => "index_devices_on_corporate_directory_id"
  add_index "devices", ["paging_profile_id"], :name => "index_devices_on_paging_profile_id"
  add_index "devices", ["time_zone_id"], :name => "index_devices_on_time_zone_id"

  create_table "pbx_user_groups", :force => true do |t|
    t.integer  "pbx_id"
    t.string   "name"
    t.boolean  "internal_access"
    t.boolean  "local_access"
    t.boolean  "domestic_long_distance_access"
    t.boolean  "international_access"
    t.boolean  "toll_numbers_access"
    t.boolean  "malicious_area_codes_access"
    t.boolean  "super_access"
    t.boolean  "eavesdropping_access"
    t.boolean  "prompt_recording_access"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "pbx_user_groups", ["pbx_id"], :name => "index_pbx_user_groups_on_pbx_id"

  create_table "pbx_user_groups_pbx_users", :force => true do |t|
    t.integer "pbx_user_group_id"
    t.integer "pbx_user_id"
  end

  add_index "pbx_user_groups_pbx_users", ["pbx_user_group_id"], :name => "index_pbx_user_groups_pbx_users_on_pbx_user_group_id"
  add_index "pbx_user_groups_pbx_users", ["pbx_user_id"], :name => "index_pbx_user_groups_pbx_users_on_pbx_user_id"

  create_table "pbx_users", :force => true do |t|
    t.integer  "pbx_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "dialable_username"
    t.integer  "sysadmin_user_id"
    t.boolean  "sysadmin_login_enabled"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "pbx_users", ["pbx_id"], :name => "index_pbx_users_on_pbx_id"
  add_index "pbx_users", ["sysadmin_user_id"], :name => "index_pbx_users_on_sysadmin_user_id"

  create_table "pbxes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pbxes_users", :force => true do |t|
    t.integer "pbx_id"
    t.integer "user_id"
  end

  add_index "pbxes_users", ["pbx_id"], :name => "index_pbxes_users_on_pbx_id"
  add_index "pbxes_users", ["user_id"], :name => "index_pbxes_users_on_user_id"

  create_table "phone_numbers", :force => true do |t|
    t.integer  "pbx_id"
    t.string   "name"
    t.string   "number"
    t.string   "caller_id"
    t.boolean  "block_caller_id"
    t.string   "phone_number_type"
    t.string   "call_endpoint"
    t.integer  "hold_music_id"
    t.string   "call_recording_location"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "users", :force => true do |t|
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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
