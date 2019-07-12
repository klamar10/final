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

ActiveRecord::Schema.define(version: 20190712043844) do

  create_table "cotizacions", force: :cascade do |t|
    t.text "comentarios"
    t.integer "departamento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departamento_id"], name: "index_cotizacions_on_departamento_id"
  end

  create_table "departamentos", force: :cascade do |t|
    t.integer "piso"
    t.text "numero"
    t.string "estado"
    t.text "area"
    t.string "tipo"
    t.integer "precio"
    t.integer "proyecto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proyecto_id"], name: "index_departamentos_on_proyecto_id"
  end

  create_table "proyectos", force: :cascade do |t|
    t.string "nombre"
    t.string "caracteristica"
    t.text "areacomun"
    t.integer "pisos"
    t.text "ubicacion"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "foto_file_name"
    t.string "foto_content_type"
    t.bigint "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.text "email"
    t.text "password"
    t.integer "celular"
    t.integer "dni"
    t.text "direccion"
    t.string "perfil"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
