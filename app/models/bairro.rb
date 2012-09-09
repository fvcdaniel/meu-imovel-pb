class Bairro < ActiveRecord::Base
  
  attr_accessible :nome, :cidade_id, :chave
  
  belongs_to :cidade
  
  def to_s
    self.nome
  end
  
end
