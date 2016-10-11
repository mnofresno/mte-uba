class UnidadChoferesController < AuthorizedController
   # GET /unidades/:unidad_id/choferes/new
  def new
    unidad = Unidad.find(params[:unidad_id])
    
    @unidad_chofer = unidad.unidad_choferes.build
    respond_to do |format|
       format.html
    end
  end

  # POST /unidades/:unidad_id/choferes
  def create
     unidad = Unidad.find(params[:unidad_id])
     
     @unidadChofer = unidad.unidad_choferes.create(unidad_chofer_params)
     
     respond_to do |format|
        if @unidadChofer.save
           format.html { redirect_to([unidad], :notice => 'Chofer asignado correctamente.') }
        else
           format.html { render :action => "new" }
        end
     end
  end

  # PATCH/PUT /unidades/1
  # PATCH/PUT /unidades/1.json
  def update
    respond_to do |format|
      if @unidad.update(unidad_params)
        format.html { redirect_to @unidad, notice: 'Unidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @unidad }
      else
        format.html { render :edit }
        format.json { render json: @unidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unidades/1
  # DELETE /unidades/1.json
  def destroy
    @unidad.destroy
    respond_to do |format|
      format.html { redirect_to unidades_url, notice: 'Unidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unidad
      @unidad = Unidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unidad_chofer_params
      params.require(:unidad_chofer).permit(:unidad_id, :turno_id, :chofer_id)
    end
end
