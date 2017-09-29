class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameteres, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameteres
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :birthdate, :location])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :birthdate, :location])
  end
end
