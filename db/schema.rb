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

ActiveRecord::Schema.define(version: 20140924005303) do

  create_table "departamentos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "destinatarios", force: true do |t|
    t.string   "nombre_razon"
    t.string   "ruc"
    t.string   "dni"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "distritos", force: true do |t|
    t.string   "nombre"
    t.integer  "provincia_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "factura_elementos", force: true do |t|
    t.integer  "primera_guia_id"
    t.integer  "segunda_guia_id"
    t.integer  "factura_id"
    t.string   "precio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facturas", force: true do |t|
    t.integer  "numero_factura_id"
    t.integer  "remitente_direccione_id"
    t.string   "condiciones_pago"
    t.string   "valor_venta"
    t.string   "igv"
    t.string   "precio_venta"
    t.integer  "placa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guia_elementos", force: true do |t|
    t.string   "numero_guia_remitente"
    t.integer  "guia_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guias", force: true do |t|
    t.integer  "numero_guia_id"
    t.date     "fecha_emision"
    t.date     "fecha_traslado"
    t.string   "partida_direccion"
    t.integer  "partida_distrito_id"
    t.string   "llegada_direccion"
    t.integer  "llegada_distrito_id"
    t.integer  "remitente_id"
    t.integer  "destinatario_id"
    t.string   "marca_vehiculo"
    t.integer  "placa_id"
    t.string   "configuracion_vehicular"
    t.string   "numero_certificado_inscripcion"
    t.string   "licencia_conducir"
    t.string   "remitente_remision"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "numero_facturas", force: true do |t|
    t.string   "numero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "numero_guias", force: true do |t|
    t.string   "numero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "placas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provincias", force: true do |t|
    t.string   "nombre"
    t.integer  "departamento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "remitente_direcciones", force: true do |t|
    t.string   "direccion"
    t.integer  "remitente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "remitentes", force: true do |t|
    t.string   "nombre_razon"
    t.string   "ruc"
    t.string   "dni"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
