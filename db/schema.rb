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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120804133111) do

  create_table "contatos", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "fone"
    t.string   "celular"
    t.text     "mensagem"
    t.integer  "anunciante_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contatos", ["anunciante_id"], :name => "index_contatos_on_anunciante_id"

  create_table "imagems", :force => true do |t|
    t.string   "arquivo"
    t.string   "nome"
    t.integer  "imovel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "imagems", ["imovel_id"], :name => "index_imagems_on_imovel_id"

  create_table "imovels", :force => true do |t|
    t.string   "titulo"
    t.string   "tipo"
    t.decimal  "valor"
    t.integer  "area"
    t.integer  "quarto"
    t.integer  "suite"
    t.integer  "vaga"
    t.string   "endereco"
    t.text     "descricao"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "imovels", ["user_id"], :name => "index_imovels_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
