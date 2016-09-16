class NotapedidosController < ApplicationController
  before_action :set_notapedido, only: [:show, :edit, :update, :destroy]

  # GET /notapedidos
  # GET /notapedidos.json
  def index
    @notapedidos = Notapedido.all
  end

  # GET /notapedidos/1
  # GET /notapedidos/1.json
  def show
  end

  # GET /notapedidos/new
  def new
    @notapedido = Notapedido.new
  end

  # GET /notapedidos/1/edit
  def edit
  end

  # POST /notapedidos
  # POST /notapedidos.json
  def create
    @notapedido = Notapedido.new(notapedido_params)

    respond_to do |format|
      if @notapedido.save
        format.html { redirect_to @notapedido, notice: 'Notapedido was successfully created.' }
        format.json { render :show, status: :created, location: @notapedido }
      else
        format.html { render :new }
        format.json { render json: @notapedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notapedidos/1
  # PATCH/PUT /notapedidos/1.json
  def update
    respond_to do |format|
      if @notapedido.update(notapedido_params)
        format.html { redirect_to @notapedido, notice: 'Notapedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @notapedido }
      else
        format.html { render :edit }
        format.json { render json: @notapedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notapedidos/1
  # DELETE /notapedidos/1.json
  def destroy
    @notapedido.destroy
    respond_to do |format|
      format.html { redirect_to notapedidos_url, notice: 'Notapedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notapedido
      @notapedido = Notapedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notapedido_params
      params.fetch(:notapedido, {})
    end
end
