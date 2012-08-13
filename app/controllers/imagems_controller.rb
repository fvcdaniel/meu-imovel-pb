class ImagemsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorize_user!
  
  def authorize_user!
    unless current_user.has_role? "root"
      true
    end
  end
  
  # GET /imagems
  # GET /imagems.json
  def index
    @imagems = Imagem.where(:imovel_id => current_user.imovels {|i| i.id})

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @imagems }
    end
  end

  # GET /imagems/1
  # GET /imagems/1.json
  def show
    @imagem = Imagem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @imagem }
    end
  end

  # GET /imagems/new
  # GET /imagems/new.json
  def new
    @imagem = Imagem.new
    @imagem.imovel = Imovel.find(params[:id]) if params[:id]
    
    # unless @imagem.imovel
      # return redirect_to imagems_path
    # end
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @imagem }
    end
  end

  # GET /imagems/1/edit
  def edit
    @imagem = Imagem.find(params[:id])
  end

  # POST /imagems
  # POST /imagems.json
  def create
    @imagem = Imagem.new(params[:imagem])

    respond_to do |format|
      if @imagem.save
        format.html { redirect_to new_imagem_path(:id => @imagem.imovel.id), notice: 'Imagem criada com sucesso.'}
        format.json { render json: @imagem, status: :created, location: @imagem }
      else
        format.html { render action: "new" }
        format.json { render json: @imagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /imagems/1
  # PUT /imagems/1.json
  def update
    @imagem = Imagem.find(params[:id])

    respond_to do |format|
      if @imagem.update_attributes(params[:imagem])
        format.html { redirect_to @imagem, notice: 'Imagem was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @imagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imagems/1
  # DELETE /imagems/1.json
  def destroy
    @imagem = Imagem.find(params[:id])
    @imagem.destroy

    respond_to do |format|
      format.html { redirect_to imagems_url }
      format.json { head :ok }
    end
  end
end
