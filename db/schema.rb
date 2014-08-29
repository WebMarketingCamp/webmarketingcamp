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

ActiveRecord::Schema.define(version: 20140829134214) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: true do |t|
    t.text     "instructions"
    t.integer  "unit_id"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assignments", ["owner_id"], name: "index_assignments_on_owner_id", using: :btree
  add_index "assignments", ["unit_id"], name: "index_assignments_on_unit_id", using: :btree

  create_table "course_units", force: true do |t|
    t.integer  "rank"
    t.string   "status"
    t.integer  "course_id"
    t.integer  "unit_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_units", ["course_id"], name: "index_course_units_on_course_id", using: :btree
  add_index "course_units", ["unit_id"], name: "index_course_units_on_unit_id", using: :btree
  add_index "course_units", ["user_id"], name: "index_course_units_on_user_id", using: :btree

  create_table "courses", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
  end

  add_index "courses", ["owner_id"], name: "index_courses_on_owner_id", using: :btree

  create_table "enrollments", force: true do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enrollments", ["course_id"], name: "index_enrollments_on_course_id", using: :btree
  add_index "enrollments", ["user_id"], name: "index_enrollments_on_user_id", using: :btree

  create_table "guide_units", force: true do |t|
    t.integer  "unit_id"
    t.integer  "guide_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "guide_units", ["guide_id"], name: "index_guide_units_on_guide_id", using: :btree
  add_index "guide_units", ["unit_id"], name: "index_guide_units_on_unit_id", using: :btree

  create_table "guides", force: true do |t|
    t.text     "title"
    t.text     "description"
    t.text     "content"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "guides", ["owner_id"], name: "index_guides_on_owner_id", using: :btree

  create_table "mentor_reviews", force: true do |t|
    t.text     "content"
    t.integer  "student_answer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mentor_reviews", ["student_answer_id"], name: "index_mentor_reviews_on_student_answer_id", using: :btree

  create_table "questions", force: true do |t|
    t.text     "content"
    t.text     "instructions"
    t.integer  "assignment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["assignment_id"], name: "index_questions_on_assignment_id", using: :btree

  create_table "student_answers", force: true do |t|
    t.text     "content"
    t.integer  "question_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "student_answers", ["question_id"], name: "index_student_answers_on_question_id", using: :btree
  add_index "student_answers", ["student_id"], name: "index_student_answers_on_student_id", using: :btree

  create_table "units", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "units", ["user_id"], name: "index_units_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
