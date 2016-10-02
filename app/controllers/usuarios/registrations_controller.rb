class Usuarios::RegistrationsController < Devise::RegistrationsController
# before_action :configure_sign_up_params, only: [:create]
# before_action :configure_account_update_params, only: [:update]

  skip_before_filter :require_no_authentication, only: [:new, :create]

  # GET /resource/sign_up
   #def new
   #  super
   #end

  # POST /resource
   def create
     super

    if new_usuario_params[:password].blank?
      new_usuario_params.delete(:password)
      new_usuario_params.delete(:password_confirmation)
    end

    @usuario = Usuario.invite!(new_usuario_params,current_usuario)

    current_taller.add_usuario(@usuario)


    respond_to do |format|
      if @usuario.valid?
        format.html { usuarios_path  }
        format.json { render :show, status: :created, location: @usuario }
      else
        format.html { render :new }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
   end

  # GET /resource/edit
   #def edit
   #  super
   #end

  # PUT /resource
   #def update
   #  super
   #end

  # DELETE /resource
   #def destroy
   #  super
   #end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  def new
    resource = build_resource
    resource.build_taller
    respond_with resource
  end

  def update
    #format_and_validate_cuit
    super
  end

  #def after_sign_up_path_for(resource)
  #  redirect_to new_usuario_session_path
  #end

  def after_inactive_sign_up_path_for(resource)
    #logger.debug("after_inactive_sign_up_path_for")
    new_usuario_session_path
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_usuario_params
      params.require(:usuario).permit(:nombre, :apellido, :email)
    end

    protected
    def needs_password?(usuario, params)
    params[:password].present?
    end

end
