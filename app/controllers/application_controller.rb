class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?

    def current_user 
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
        end
    end 

    def redirect_unless_admin 
        redirect_to posts_path unless current_user && current_user.admin 
    end 

    def logged_in?
        !!session[:user_id]
    end 

end
