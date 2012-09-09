class Pretensao < ActiveRecord::Base
  
  attr_accessible :nome
  def to_s
    self.nome
  end
end
