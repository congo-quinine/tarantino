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

ActiveRecord::Schema.define(version: 1) do

  create_table "categories", force: :cascade do |t|
    t.string "event"
  end

  create_table "events", force: :cascade do |t|
    t.integer "film_id"
    t.integer "word_id"
    t.integer "category_id"
    t.integer "minutes_in"
    t.index ["category_id"], name: "index_events_on_category_id"
    t.index ["film_id"], name: "index_events_on_film_id"
    t.index ["word_id"], name: "index_events_on_word_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "title_constant"
    t.string "primary_title"
    t.integer "year"
    t.integer "run_time"
  end

  create_table "ratings", force: :cascade do |t|
    t.string "title_constant"
    t.integer "rating"
    t.integer "film_id"
    t.index ["film_id"], name: "index_ratings_on_film_id"
  end

  create_table "words", force: :cascade do |t|
    t.string "word"
  end

end
