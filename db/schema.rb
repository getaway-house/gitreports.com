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

ActiveRecord::Schema.define(version: 2019_07_15_184758) do

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations_users", force: :cascade do |t|
    t.integer "organization_id"
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repositories", force: :cascade do |t|
    t.string "github_id"
    t.string "name"
    t.string "display_name"
    t.string "issue_name"
    t.text "prompt"
    t.text "followup"
    t.string "labels"
    t.boolean "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "organization_id"
    t.string "owner"
    t.string "notification_emails"
    t.boolean "allow_issue_title", default: false
    t.boolean "include_submitter_email", default: false
  end

  create_table "repositories_users", force: :cascade do |t|
    t.integer "repository_id"
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "simple_captcha_data", force: :cascade do |t|
    t.string "key", limit: 40
    t.string "value", limit: 6
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["key"], name: "idx_key"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "avatar_url"
    t.string "access_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "is_admin", default: false
  end

end
