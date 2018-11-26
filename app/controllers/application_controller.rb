class ApplicationController < ActionController::Base
    before_action :sanitize_devise_params, if: :devise_controller?

    def sanitize_devise_params
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :avatar])
        devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :avatar])
    end

end
