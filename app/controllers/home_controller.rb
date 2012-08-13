class HomeController < ApplicationController
  def index
    @imoveis = Imovel.all
    @banners = Banner.where(:ativo => true)
  end
end
