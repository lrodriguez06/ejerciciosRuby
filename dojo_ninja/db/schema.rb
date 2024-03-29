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

ActiveRecord::Schema.define(version: 2022_08_25_022640) do

  create_table "dojos", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state", limit: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ninjas", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "dojo_id", null: false
    t.string "firt_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dojo_id"], name: "index_ninjas_on_dojo_id"
  end

  add_foreign_key "ninjas", "dojos"
end
