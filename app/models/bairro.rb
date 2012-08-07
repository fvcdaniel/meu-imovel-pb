class Bairro < ActiveRecord::Base
  belongs_to :cidade
  
  def to_s
    self.nome
  end
  
end
