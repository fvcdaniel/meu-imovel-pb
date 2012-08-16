class HomeController < ApplicationController
  def index
    @imoveis = Imovel.all
  end
end
