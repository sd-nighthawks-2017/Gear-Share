class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameteres, if: :devise_controller?
  before_action :create_tasks_variable
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  protected

    def after_sign_in_path_for(resource)
      profile_path(current_user.id)
    end

    def create_tasks_variable
      if user_signed_in?
        @tasks = Task.all
      end
    end

    def configure_permitted_parameteres
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :birthdate, :location])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :birthdate, :location])
    end
end
