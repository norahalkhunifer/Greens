class ApplicationController < ActionController::Base

    # protect_from_forgery with: :exception
    # protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :admin) }
            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password, :current_password) }
        end
end
