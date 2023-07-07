class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    # def after_sign_in_path_path_for(resource)
    #     publications_path
    # end

    def after_sign_in_path_for(resource)
        publications_path
    end

    def authorize_request(kind = nil)
        unless kind.include?(current_user.role)
            redirect_to publications_path, notice: "No tienes permiso para hacer esto. Actualice su estado."
        end
    end
      

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:pfp, :name, :age, :phone, :role])
        devise_parameter_sanitizer.permit(:account_update, keys: [:pfp, :name, :age, :phone, :role])
    end
end