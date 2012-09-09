class Cidade < ActiveRecord::Base
  attr_accessible :nome, :chave, :estado_id
  belongs_to :estado
  has_many :bairros
  
  def to_s
    self.nome
  end
end
