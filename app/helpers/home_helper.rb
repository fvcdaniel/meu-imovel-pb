module HomeHelper
  
  def get_imovel_capa_url(imovel)
    unless imovel.blank?
      img_capa = Imagem.where(:imovel_id => imovel.id, :capa => true)
      unless img_capa.blank?
        return img_capa.first.arquivo.url
      end
      return "unavailable.jpg"
    end
  end
  
end
