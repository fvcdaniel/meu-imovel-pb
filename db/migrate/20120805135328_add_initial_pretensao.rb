#!/bin/env ruby
# encoding: utf-8

class AddInitialPretensao < ActiveRecord::Migration
  def up
    Pretensao.create!(:nome => 'Alugar')
    Pretensao.create!(:nome => 'Consórcio')
    Pretensao.create!(:nome => 'Diária')
    Pretensao.create!(:nome => 'Permuta')
    Pretensao.create!(:nome => 'Temporada')
    Pretensao.create!(:nome => 'Vender')
  end

  def down
    Pretensao.destroy_all
  end
end
