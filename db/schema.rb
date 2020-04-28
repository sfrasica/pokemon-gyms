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

ActiveRecord::Schema.define(version: 2020_02_10_204841) do

  create_table "badges", force: :cascade do |t|
    t.integer "trainer_id"
    t.integer "gymleader_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gymleader_id"], name: "index_badges_on_gymleader_id"
    t.index ["trainer_id"], name: "index_badges_on_trainer_id"
  end

  create_table "gymleaders", force: :cascade do |t|
    t.string "name"
    t.string "specialty"
    t.string "city"
    t.string "badge_name"
    t.string "badge_img"
    t.string "portrait"
    t.string "headshot"
    t.string "sprite"
    t.string "fullbody"
    t.string "bg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokeballs", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "trainer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemon_id"], name: "index_pokeballs_on_pokemon_id"
    t.index ["trainer_id"], name: "index_pokeballs_on_trainer_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.string "poke_type"
    t.string "sprite"
    t.string "big_img"
    t.string "attack"
    t.string "background"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainers", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
