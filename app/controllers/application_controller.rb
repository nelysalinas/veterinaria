class ApplicationController < ActionController::Base
  
  protect_from_forgery

  before_action :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = 'No tienes autorizacion para realizar esta acción.'
    redirect_to main_app.root_path
  end

end
