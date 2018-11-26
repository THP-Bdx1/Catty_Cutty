class ApplicationController < ActionController::Base
    before_action :sanitize_devise_params, if: :devise_controller?

    def sanitize_devise_params
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
        devise_parameter_sanitizer.permit(:sign_up, keys: [:imageuser])
    end

    
    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
      update_attrs = [:password, :password_confirmation, :current_password]
      devise_parameter_sanitizer.permit :account_update, keys: update_attrs
    end

end
