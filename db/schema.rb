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

ActiveRecord::Schema.define(version: 2021_06_30_044008) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "adminpack"
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "atuendos", force: :cascade do |t|
    t.string "Descripcion"
    t.integer "Puntaje"
    t.integer "Etiqueta_Formal"
    t.integer "Etiqueta_Estacion"
    t.integer "Etiqueta_DiaNoche"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "prenda_torso_id"
    t.integer "prenda_piernas_id"
    t.integer "prenda_pies_id"
    t.integer "prenda_accesorios_id"
    t.bigint "guardarropa_id"
    t.index ["guardarropa_id"], name: "index_atuendos_on_guardarropa_id"
  end

  create_table "guardarropas", force: :cascade do |t|
    t.string "Nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "link_imagen"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_guardarropas_on_user_id"
  end

  create_table "prendas", force: :cascade do |t|
    t.text "tipo"
    t.integer "categoria"
    t.integer "tela"
    t.text "color_primario"
    t.text "color_secundario"
    t.text "link_imagen"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "guardarropa_id"
    t.index ["guardarropa_id"], name: "index_prendas_on_guardarropa_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.string "nombre"
    t.string "apellido"
    t.string "link_imagen"
    t.integer "genero"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "guardarropas", "users"
  add_foreign_key "prendas", "guardarropas"
end
