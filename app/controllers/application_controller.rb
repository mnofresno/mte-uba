class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include CanCan::ControllerAdditions
  protect_from_forgery with: :exception

  before_action :authenticate_usuario!

  before_filter :configure_permitted_parameters, if: :devise_controller?

  alias_method :current_user, :current_usuario

  layout :layout_by_resource

  helper_method :current_taller, :model_class

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre, :apellido, taller_attributes: [:nombre, direcciones_attributes:[ :calle, :altura]]])
    devise_parameter_sanitizer.permit(:account_update, keys:[:nombre, :apellido])
  end

  def layout_by_resource
    if devise_controller?
      'application'
    else
      'mteuba'
    end
  end

  def current_taller
    current_usuario.current_taller || current_usuario.talleres.first
  end
  
  def model_class
     @model_class = controller_path.classify.constantize
  end
end
