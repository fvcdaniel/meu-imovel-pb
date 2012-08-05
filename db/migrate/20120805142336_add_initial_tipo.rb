#!/bin/env ruby
# encoding: utf-8

class AddInitialTipo < ActiveRecord::Migration
  def up
    Tipo.create!(:nome => 'Apartamento')
    Tipo.create!(:nome => 'Casa')
    Tipo.create!(:nome => 'Chácara')
    Tipo.create!(:nome => 'Chalé')
    Tipo.create!(:nome => 'Cobertura')
    Tipo.create!(:nome => 'Cond. Residencial')
    Tipo.create!(:nome => 'Fazenda')
    Tipo.create!(:nome => 'Flat')
    Tipo.create!(:nome => 'Granja')
    Tipo.create!(:nome => 'Kitnet')
    Tipo.create!(:nome => 'Loja')
    Tipo.create!(:nome => 'Ponto Comercial')
    Tipo.create!(:nome => 'Sítio')
    Tipo.create!(:nome => 'Sobrado')
    Tipo.create!(:nome => 'Terreno')
  end

  def down
    Tipo.destroy_all
  end
end
