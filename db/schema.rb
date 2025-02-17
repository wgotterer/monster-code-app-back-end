# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_14_160600) do

  create_table "avatars", force: :cascade do |t|
    t.string "image_url"
    t.string "name"
    t.string "meta"
    t.string "description"
  end

  create_table "levels", force: :cascade do |t|
    t.string "name"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.integer "level_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "level_id"
    t.string "question"
    t.string "answer"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "avatar_id"
    t.integer "level_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
