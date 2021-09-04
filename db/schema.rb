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

ActiveRecord::Schema.define(version: 2021_09_04_191554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.integer "cedula_cliente"
    t.string "nombre_cliente"
    t.string "apellido_cliente"
    t.string "direccion_cliente"
    t.string "telefono_cliente"
    t.string "email_cliente"
    t.string "nombre_referencia_cliente"
    t.string "telefono_referencia_cliente"
    t.string "ruc_cliente"
    t.bigint "tipo_cliente_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tipo_cliente_id"], name: "index_clientes_on_tipo_cliente_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre_producto"
    t.string "detalle_producto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "proveedores", force: :cascade do |t|
    t.string "ruc_proveedor"
    t.string "nombre_proveedor"
    t.string "telefono_proveedor"
    t.string "email_proveedor"
    t.string "nombre_contacto_proveedor"
    t.string "telefono_contacto_proveedor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.string "lote_producto"
    t.integer "cantidad_producto"
    t.integer "unidad_medida_producto"
    t.date "fecha_vto_producto"
    t.bigint "proveedor_id", null: false
    t.bigint "producto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["producto_id"], name: "index_stocks_on_producto_id"
    t.index ["proveedor_id"], name: "index_stocks_on_proveedor_id"
  end

  create_table "tipo_clientes", force: :cascade do |t|
    t.string "desc_tipo_cliente"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "role", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "clientes", "tipo_clientes"
  add_foreign_key "stocks", "productos"
  add_foreign_key "stocks", "proveedores"
end
