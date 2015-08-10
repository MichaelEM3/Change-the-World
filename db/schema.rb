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

ActiveRecord::Schema.define(version: 20150809060734) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.integer  "trackable_id"
    t.string   "trackable_type"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "key"
    t.text     "parameters"
    t.integer  "recipient_id"
    t.string   "recipient_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type", using: :btree
  add_index "activities", ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type", using: :btree
  add_index "activities", ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type", using: :btree

  create_table "clubs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "location"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "thumbtag"
  end

  create_table "commentaries", force: :cascade do |t|
    t.text     "comment"
    t.integer  "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "commentaries", ["story_id"], name: "index_commentaries_on_story_id", using: :btree
  add_index "commentaries", ["user_id"], name: "index_commentaries_on_user_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.integer  "club_id"
    t.string   "name"
    t.text     "description"
    t.string   "location"
    t.date     "due_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "projects", ["club_id"], name: "index_projects_on_club_id", using: :btree

  create_table "stories", force: :cascade do |t|
    t.integer  "club_id"
    t.string   "title"
    t.text     "story"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "stories", ["club_id"], name: "index_stories_on_club_id", using: :btree

  create_table "tasks", force: :cascade do |t|
    t.integer  "project_id"
    t.text     "description"
    t.boolean  "completed"
    t.date     "due_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tasks", ["project_id"], name: "index_tasks_on_project_id", using: :btree

  create_table "user_clubs", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "role"
    t.integer  "task_id"
  end

  add_index "user_clubs", ["club_id"], name: "index_user_clubs_on_club_id", using: :btree
  add_index "user_clubs", ["task_id"], name: "index_user_clubs_on_task_id", using: :btree
  add_index "user_clubs", ["user_id"], name: "index_user_clubs_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "age"
    t.text     "about"
    t.string   "gender"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  add_foreign_key "commentaries", "stories"
  add_foreign_key "commentaries", "users"
  add_foreign_key "projects", "clubs"
  add_foreign_key "stories", "clubs"
  add_foreign_key "tasks", "projects"
  add_foreign_key "user_clubs", "clubs"
  add_foreign_key "user_clubs", "tasks"
  add_foreign_key "user_clubs", "users"
end
