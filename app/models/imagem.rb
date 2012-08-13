class Imagem < ActiveRecord::Base
  belongs_to :imovel
  attr_accessible :arquivo, :nome, :imovel_id, :capa
  mount_uploader :arquivo, ImagemUploader
  
  validates_presence_of :nome, :arquivo, :imovel
  
  before_update :set_capa_blank
  
  def set_capa_blank
    unless self.imovel_id.blank?
      Imagem.where('imovel_id = ? and capa = ?', self.imovel_id, true).update_all(:capa => 0)
    end
  end
  
end
