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

ActiveRecord::Schema[7.0].define(version: 2023_07_27_101142) do
  create_table "helm_charts", force: :cascade do |t|
    t.string "chart_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "git_repo_url"
    t.integer "organization_id"
    t.string "deployable_type", null: false
    t.integer "deployable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deployable_type", "deployable_id"], name: "index_projects_on_deployable"
    t.index ["name"], name: "index_projects_on_name", unique: true
  end

  create_table "requirements_yamls", force: :cascade do |t|
    t.string "requirements_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
