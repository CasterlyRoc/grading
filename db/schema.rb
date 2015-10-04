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

ActiveRecord::Schema.define(version: 20151004195205) do

  create_table "assignments", force: :cascade do |t|
    t.string   "due_date"
    t.integer  "tot_points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "Title"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "instructor_id"
  end

  add_index "courses", ["instructor_id"], name: "index_courses_on_instructor_id"

  create_table "instructors", force: :cascade do |t|
    t.string   "name"
    t.string   "office"
    t.string   "webpage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "question"
    t.string   "answer"
    t.integer  "point_value"
    t.integer  "assignment_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "questions", ["assignment_id"], name: "index_questions_on_assignment_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
