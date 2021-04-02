# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_02_055146) do

  create_table "carts", force: :cascade do |t|
    t.integer "deal_id"
    t.integer "customer_id"
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "mobile_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address"
    t.string "user_type"
  end

  create_table "deals", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "price"
    t.integer "discounted_price"
    t.integer "quantity"
    t.datetime "publish_date"
    t.string "image"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "status", default: 1
  end

  create_table "orders", force: :cascade do |t|
    t.integer "deal_id"
    t.integer "customer_id"
    t.string "address"
    t.string "mobile_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "discount"
    t.integer "total_amount"
  end

end
