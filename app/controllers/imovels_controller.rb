class ImovelsController < ApplicationController
  before_filter :authenticate_user!, :only => [:create, :new, :edit, :update]
  
  # GET /imovels
  # GET /imovels.json
  def index
    @imovels = Imovel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @imovels }
    end
  end

  # GET /imovels/1
  # GET /imovels/1.json
  def show
    @imovel = Imovel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @imovel }
    end
  end

  # GET /imovels/new
  # GET /imovels/new.json
  def new
    @imovel = Imovel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @imovel }
    end
  end

  # GET /imovels/1/edit
  def edit
    @imovel = Imovel.find(params[:id])
  end

  # POST /imovels
  # POST /imovels.json
  def create
    @imovel = Imovel.new(params[:imovel])
    puts params[:imovel]
    #@imovel.estado = Estado.find(params[:imovel][:estado_id]) if params[:imovel][:estado_id]
    @imovel.user = current_user 

    respond_to do |format|
      if @imovel.save
        format.html { redirect_to new_imagem_path(:id=>@imovel.id), notice: 'Imovel criado com sucesso.'}
        format.json { render json: @imovel, status: :created, location: @imovel }
      else
        format.html { render action: "new" }
        format.json { render json: @imovel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /imovels/1
  # PUT /imovels/1.json
  def update
    @imovel = Imovel.find(params[:id])

    respond_to do |format|
      if @imovel.update_attributes(params[:imovel])
        format.html { redirect_to @imovel, notice: 'Imovel was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @imovel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imovels/1
  # DELETE /imovels/1.json
  def destroy
    @imovel = Imovel.find(params[:id])
    @imovel.destroy

    respond_to do |format|
      format.html { redirect_to imovels_url }
      format.json { head :ok }
    end
  end
  
  def dynamic_cidades
    @cidades = Cidade.find_all_by_estado_id(params[:id])
    respond_to do |format|
      format.js
    end
  end
  
  def dynamic_bairros
    @bairros = Bairro.find_all_by_cidade_id(params[:id])
    respond_to do |format|
      format.js
    end
  end
end
