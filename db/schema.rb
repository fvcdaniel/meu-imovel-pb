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

ActiveRecord::Schema.define(:version => 20120805212610) do

  create_table "bairros", :force => true do |t|
    t.integer  "cidade_id"
    t.string   "nome"
    t.integer  "chave"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bairros", ["cidade_id"], :name => "index_bairros_on_cidade_id"

  create_table "cidades", :force => true do |t|
    t.integer  "estado_id"
    t.string   "nome"
    t.integer  "chave"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cidades", ["estado_id"], :name => "index_cidades_on_estado_id"

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

  create_table "estados", :force => true do |t|
    t.string   "nome"
    t.string   "uf"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imagems", :force => true do |t|
    t.string   "arquivo"
    t.string   "nome"
    t.integer  "imovel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "imagems", ["imovel_id"], :name => "index_imagems_on_imovel_id"

  create_table "imovels", :force => true do |t|
    t.integer  "user_id"
    t.integer  "estado_id"
    t.integer  "cidade_id"
    t.integer  "bairro_id"
    t.integer  "tipo_id"
    t.integer  "pretensao_id"
    t.string   "situacao"
    t.string   "endereco"
    t.integer  "quarto"
    t.integer  "suite"
    t.integer  "banheiro"
    t.integer  "sala"
    t.integer  "cozinha"
    t.integer  "dependencia"
    t.decimal  "area"
    t.string   "posicao"
    t.integer  "garagem"
    t.integer  "piscina"
    t.decimal  "valor"
    t.decimal  "condominio"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "imovels", ["bairro_id"], :name => "index_imovels_on_bairro_id"
  add_index "imovels", ["cidade_id"], :name => "index_imovels_on_cidade_id"
  add_index "imovels", ["estado_id"], :name => "index_imovels_on_estado_id"
  add_index "imovels", ["pretensao_id"], :name => "index_imovels_on_pretensao_id"
  add_index "imovels", ["tipo_id"], :name => "index_imovels_on_tipo_id"
  add_index "imovels", ["user_id"], :name => "index_imovels_on_user_id"

  create_table "pretensaos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "tipos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
