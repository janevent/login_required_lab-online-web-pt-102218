class SecretsController < ApplicationController 
    before_action :require_login

    def show
        #binding.pry
        if current_user 
            #redirect_to '/'
            render :show
        else
            redirect_to new_session_path
        end
    end

    

    private

    def require_login
        redirect_to new_session_path unless session.include? :name
    end
end