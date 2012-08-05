class AddInitialEstado < ActiveRecord::Migration
  def up
    
    Estado.create!(:uf => 'AC', :nome => 'ACRE')

    Estado.create!(:uf => 'AL', :nome => 'ALAGOAS')
    
    Estado.create!(:uf => 'AM', :nome => 'AMAZONAS')
    
    Estado.create!(:uf => 'AP', :nome => 'AMAPA')
    
    Estado.create!(:uf => 'BA', :nome => 'BAHIA')
    
    Estado.create!(:uf => 'CE', :nome => 'CEARA')
    
    Estado.create!(:uf => 'DF', :nome => 'DISTRITO FEDERAL')
    
    Estado.create!(:uf => 'ES', :nome => 'ESPIRITO SANTO')
    
    Estado.create!(:uf => 'GO', :nome => 'GOIAS')
    
    Estado.create!(:uf => 'MA', :nome => 'MARANHAO')
    
    Estado.create!(:uf => 'MG', :nome => 'MINAS GERAIS')
    
    Estado.create!(:uf => 'MS', :nome => 'MATO GROSSO DO SUL')
    
    Estado.create!(:uf => 'MT', :nome => 'MATO GROSSO')
    
    Estado.create!(:uf => 'PA', :nome => 'PARA')
    
    Estado.create!(:uf => 'PB', :nome => 'PARAIBA')
    
    Estado.create!(:uf => 'PE', :nome => 'PERNAMBUCO')
    
    Estado.create!(:uf => 'PI', :nome => 'PIAUI')
    
    Estado.create!(:uf => 'PR', :nome => 'PARANA')
    
    Estado.create!(:uf => 'RJ', :nome => 'RIO DE JANEIRO')
    
    Estado.create!(:uf => 'RN', :nome => 'RIO GRANDE DO NORTE')
    
    Estado.create!(:uf => 'RO', :nome => 'RONDONIA')
    
    Estado.create!(:uf => 'RR', :nome => 'RORAIMA')
    
    Estado.create!(:uf => 'RS', :nome => 'RIO GRANDE DO SUL')
    
    Estado.create!(:uf => 'SC', :nome => 'SANTA CATARINA')
    
    Estado.create!(:uf => 'SE', :nome => 'SERGIPE')
    
    Estado.create!(:uf => 'SP', :nome => 'SAO PAULO')
    
    Estado.create!(:uf => 'TO', :nome => 'TOCANTINS')
    
  end

  def down
    Estado.destroy_all
  end
end
