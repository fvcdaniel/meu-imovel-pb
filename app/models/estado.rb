class Estado < ActiveRecord::Base
  
  attr_accessible :nome, :uf
  
  has_many :cidades
  def to_s
    self.nome
  end
end
