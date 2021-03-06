class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:email])
          if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user, notice: "User was successfully created." 
          else
            render :new
          end
      end

      def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Session was successfully destroyed." 
      end

end 