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

ActiveRecord::Schema.define(version: 20140528234816) do

  create_table "funcionarios", force: true do |t|
    t.string   "siape"
    t.string   "nome"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orcamentos", force: true do |t|
    t.string   "nome"
    t.decimal  "valor"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.decimal  "valor_passagem"
    t.integer  "prioriade"
    t.integer  "status"
    t.string   "observacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "planejamentos", ["funcionario_id"], name: "index_planejamentos_on_funcionario_id"

end
