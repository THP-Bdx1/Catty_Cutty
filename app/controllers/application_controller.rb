class ApplicationController < ActionController::Base
    before_action :sanitize_devise_params, if: :devise_controller?
    
    def sanitize_devise_params
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :admin, :profile_picture])
        devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :profile_picture])
    end

      private

    def admin
        if current_user !=nil
    unless current_user.admin == true
      flash[:danger] = "Tu dois être enregistré pour accéder à cette page, petit malin ;)"
      redirect_to root_path # halts request cycle
    end
    else redirect_to root_path
    end
  end

end
