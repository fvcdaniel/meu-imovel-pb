class Cidade < ActiveRecord::Base
  belongs_to :estado
  has_many :bairros
  
  def to_s
    self.nome
  end
end
