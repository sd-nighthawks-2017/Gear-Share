class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameteres, if: :devise_controller?
  before_action :create_tasks_variable

  skip_before_action :verify_authenticity_token, only: :create

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

    def create_tasks_variable
      if user_signed_in?
        @tasks = Task.where(user_id: current_user.id)
      end
    end

    def configure_permitted_parameteres
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :birthdate, :location, :avatar])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :birthdate, :location, :avatar])
    end
end
