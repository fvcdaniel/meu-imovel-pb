class Estado < ActiveRecord::Base
  
  has_many :cidades
  def to_s
    self.nome
  end
end
