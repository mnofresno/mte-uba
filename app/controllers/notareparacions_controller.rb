class NotareparacionsController < ApplicationController
  before_action :set_notareparacion, only: [:show, :edit, :update, :destroy]

  # GET /notareparacions
  # GET /notareparacions.json
  def index
    @notareparacions = Notareparacion.all
  end

  # GET /notareparacions/1
  # GET /notareparacions/1.json
  def show
  end

  # GET /notareparacions/new
  def new
    @notareparacion = Notareparacion.new
  end

  # GET /notareparacions/1/edit
  def edit
  end

  # POST /notareparacions
  # POST /notareparacions.json
  def create
    @notareparacion = Notareparacion.new(notareparacion_params)

    respond_to do |format|
      if @notareparacion.save
        format.html { redirect_to @notareparacion, notice: 'Notareparacion was successfully created.' }
        format.json { render :show, status: :created, location: @notareparacion }
      else
        format.html { render :new }
        format.json { render json: @notareparacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notareparacions/1
  # PATCH/PUT /notareparacions/1.json
  def update
    respond_to do |format|
      if @notareparacion.update(notareparacion_params)
        format.html { redirect_to @notareparacion, notice: 'Notareparacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @notareparacion }
      else
        format.html { render :edit }
        format.json { render json: @notareparacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notareparacions/1
  # DELETE /notareparacions/1.json
  def destroy
    @notareparacion.destroy
    respond_to do |format|
      format.html { redirect_to notareparacions_url, notice: 'Notareparacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notareparacion
      @notareparacion = Notareparacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notareparacion_params
      params.fetch(:notareparacion, {})
    end
end
