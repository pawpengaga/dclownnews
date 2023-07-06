module PublicationsHelper
    #Es mejor crear un helper que hacerlo todo solo
    def show_user_publications
        params[:user_id].present?
    end
end