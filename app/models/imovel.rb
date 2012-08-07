class Imovel < ActiveRecord::Base
  belongs_to :user
  belongs_to :estado
  belongs_to :cidade
  belongs_to :bairro
  belongs_to :tipo
  belongs_to :pretensao
end
