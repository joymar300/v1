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

ActiveRecord::Schema[7.0].define(version: 2022_04_13_023616) do
  create_table "areas", force: :cascade do |t|
    t.integer "codigo_area"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "curso_fichas", force: :cascade do |t|
    t.integer "curso_id", null: false
    t.integer "ficha_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_curso_fichas_on_curso_id"
    t.index ["ficha_id"], name: "index_curso_fichas_on_ficha_id"
  end

  create_table "cursos", force: :cascade do |t|
    t.integer "area_id", null: false
    t.string "nombre_curso"
    t.text "des_curso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_cursos_on_area_id"
  end

  create_table "fichas", force: :cascade do |t|
    t.integer "num_ficha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "curso_fichas", "cursos"
  add_foreign_key "curso_fichas", "fichas"
  add_foreign_key "cursos", "areas"
end
