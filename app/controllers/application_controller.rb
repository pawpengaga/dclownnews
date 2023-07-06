class ApplicationController < ActionController::Base
    def after_sign_in_path_path_for(resource)
        publications_path
    end
end