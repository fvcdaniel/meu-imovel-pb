class Imovel < ActiveRecord::Base
  attr_accessible :user, :estado, :cidade, :bairro, :tipo, :pretensao, :situacao, :endereco, :quarto, 
                  :suite, :banheiro, :sala, :cozinha, :dependencia, :area, :posicao, :garagem, :piscina,
                  :valor, :condominio, :descricao, :titulo
  
  belongs_to :user
  belongs_to :estado
  belongs_to :cidade
  belongs_to :bairro
  belongs_to :tipo
  belongs_to :pretensao
  has_many :imagems, :dependent => :destroy
  has_many :banners, :dependent => :destroy
  
  validates_presence_of :user, :estado, :cidade, :bairro, :tipo, :pretensao, :situacao, :titulo, :valor, :descricao
  #validates_numericality_of :endereco, :if => Proc.new { |imovel| imovel.endereco.length > 0 }
  validates :quarto, :suite, :banheiro, :sala, :cozinha, :dependencia, :area, :numericality => true, :allow_blank => true
  validates :garagem, :piscina, :valor, :condominio, :numericality => true, :allow_blank => true
  
  before_validation(:on => :create) do
    self.valor = self.valor.real.to_f
  end
  
  def to_s
    titulo
  end
  
  def capa
    self.imagems.where(:capa => true).first
  end
  
end
