class NotaReparacionsController < ApplicationController
  before_action :set_nota_reparacion, only: [:show, :edit, :update, :destroy]

  # GET /nota_reparacions
  # GET /nota_reparacions.json
  def index
    @nota_reparacions = NotaReparacion.all
  end

  # GET /nota_reparacions/1
  # GET /nota_reparacions/1.json
  def show
  end

  # GET /nota_reparacions/new
  def new
    @nota_reparacion = NotaReparacion.new
  end

  # GET /nota_reparacions/1/edit
  def edit
  end

  # POST /nota_reparacions
  # POST /nota_reparacions.json
  def create
    @nota_reparacion = NotaReparacion.new(nota_reparacion_params)

    respond_to do |format|
      if @nota_reparacion.save
        format.html { redirect_to @nota_reparacion, notice: 'Nota reparacion was successfully created.' }
        format.json { render :show, status: :created, location: @nota_reparacion }
      else
        format.html { render :new }
        format.json { render json: @nota_reparacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nota_reparacions/1
  # PATCH/PUT /nota_reparacions/1.json
  def update
    respond_to do |format|
      if @nota_reparacion.update(nota_reparacion_params)
        format.html { redirect_to @nota_reparacion, notice: 'Nota reparacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @nota_reparacion }
      else
        format.html { render :edit }
        format.json { render json: @nota_reparacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nota_reparacions/1
  # DELETE /nota_reparacions/1.json
  def destroy
    @nota_reparacion.destroy
    respond_to do |format|
      format.html { redirect_to nota_reparacions_url, notice: 'Nota reparacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nota_reparacion
      @nota_reparacion = NotaReparacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nota_reparacion_params
      params.require(:nota_reparacion).permit(:numeroserie, :fecha)
    end
end
