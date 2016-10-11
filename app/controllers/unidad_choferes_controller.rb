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
    raise NotImplementedError
  end

  # DELETE /unidades/1
  # DELETE /unidades/1.json
  def destroy
    raise NotImplementedError
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def unidad_chofer_params
      params.require(:unidad_chofer).permit(:unidad_id, :turno_id, :chofer_id)
    end
end
