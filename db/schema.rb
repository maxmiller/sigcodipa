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

ActiveRecord::Schema.define(version: 20140618235928) do

  create_table "funcionarios", force: true do |t|
    t.string   "siape"
    t.string   "nome"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orcamentos", force: true do |t|
    t.string   "nome"
    t.decimal  "valor",      precision: 10, scale: 0
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipo"
    t.integer  "ano"
  end

  create_table "planejamentos", force: true do |t|
    t.integer  "funcionario_id"
    t.string   "evento"
    t.string   "local"
    t.integer  "tipo_evento"
    t.date     "data_inicio_prevista"
    t.date     "data_fim_prevista"
    t.string   "justificativa"
    t.integer  "quantidade_alunos"
    t.decimal  "valor_passagem",       precision: 10, scale: 0
    t.integer  "prioriade"
    t.integer  "status"
    t.string   "observacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "planejamentos", ["funcionario_id"], name: "index_planejamentos_on_funcionario_id", using: :btree

  create_table "tipos", force: true do |t|
    t.string   "nome"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
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

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

end
