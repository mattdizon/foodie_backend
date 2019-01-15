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

ActiveRecord::Schema.define(version: 2019_01_14_171426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chef_recipes", force: :cascade do |t|
    t.bigint "user_id"
    t.string "recipe_name"
    t.string "difficulty"
    t.string "cuisine"
    t.string "time"
    t.text "description"
    t.text "thumbnail"
    t.text "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_chef_recipes_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.bigint "chef_recipe_id"
    t.text "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chef_recipe_id"], name: "index_images_on_chef_recipe_id"
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.bigint "chef_recipe_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chef_recipe_id"], name: "index_recipe_ingredients_on_chef_recipe_id"
  end

  create_table "recipe_instructions", force: :cascade do |t|
    t.bigint "chef_recipe_id"
    t.string "instruction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chef_recipe_id"], name: "index_recipe_instructions_on_chef_recipe_id"
  end

  create_table "user_ingredients", force: :cascade do |t|
    t.bigint "user_id"
    t.string "ingredient"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_ingredients_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "auth_token"
    t.boolean "chef"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "chef_recipes", "users"
  add_foreign_key "images", "chef_recipes"
  add_foreign_key "recipe_ingredients", "chef_recipes"
  add_foreign_key "recipe_instructions", "chef_recipes"
  add_foreign_key "user_ingredients", "users"
end
