class Pretensao < ActiveRecord::Base
  
  def to_s
    self.nome
  end
end