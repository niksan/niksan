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

ActiveRecord::Schema.define(:version => 20110821112926) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gritter_notices", :force => true do |t|
    t.integer  "owner_id",     :null => false
    t.string   "owner_type",   :null => false
    t.text     "text",         :null => false
    t.text     "options",      :null => false
    t.datetime "delivered_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gritter_notices", ["owner_id", "delivered_at"], :name => "index_gritter_notices_on_owner_id_and_delivered_at"

  create_table "link_tags", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "tagged_id"
    t.string   "tagged_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "link_tags", ["tagged_id", "tagged_type"], :name => "index_link_tags_on_tagged_id_and_tagged_type"

  create_table "messages", :force => true do |t|
    t.string   "theme"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portfolio_sites", :force => true do |t|
    t.integer  "portfolio_id"
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "portfolio_sites", ["portfolio_id", "site_id"], :name => "index_portfolio_sites_on_portfolio_id_and_site_id"

  create_table "portfolios", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.string   "short"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "date"
  end

  create_table "sites", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "date"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "link_tags_count"
  end

end
