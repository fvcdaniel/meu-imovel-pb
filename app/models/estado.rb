class Estado < ActiveRecord::Base
  
  attr_accessible :nome, :uf, :cidades
  
  has_many :cidades
  def to_s
    self.nome
  end
end
