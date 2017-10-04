class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameteres, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

    def after_sign_in_path_for(resource)
      profile_path(current_user.id)
    end

  def configure_permitted_parameteres
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :birthdate, :location, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :birthdate, :location, :avatar])
  end
end
