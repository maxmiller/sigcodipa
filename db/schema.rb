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

ActiveRecord::Schema.define(version: 20140620011102) do

  create_table "orcamentos", force: true do |t|
    t.string   "nome"
    t.float    "valor"
    t.integer  "tipo_id"
    t.integer  "ano"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orcamentos", ["tipo_id"], name: "index_orcamentos_on_tipo_id", using: :btree

  create_table "planejamentos", force: true do |t|
    t.string   "siape"
    t.string   "nome"
    t.string   "email"
    t.integer  "tipo_solicitacao"
    t.integer  "prioridade"
    t.string   "nome_evento"
    t.string   "empresa"
    t.integer  "tipo_empresa"
    t.string   "local_evento"
    t.string   "cnpj"
    t.date     "inicio_evento"
    t.date     "fim_evento"
    t.float    "taxa_inscricao"
    t.float    "valor_passagem"
    t.integer  "carga_horaria"
    t.integer  "justificativa"
    t.integer  "quantidade_aluno"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
