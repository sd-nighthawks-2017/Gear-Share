class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameteres, if: :devise_controller?
  protect_from_forgery with: :exception

  before_action :require_login

  private

  def require_login
    unless user_signed_in?
      flash[:notice] = "You must be logged in to continue"
      redirect_to new_user_session_path
    end
  end

  protected

    def after_sign_in_path_for(resource)
      profile_path(current_user.id)
    end

  def configure_permitted_parameteres
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :birthdate, :location])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :birthdate, :location])
  end
end
