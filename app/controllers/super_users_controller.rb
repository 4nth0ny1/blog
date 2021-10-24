class SuperUsersController < ApplicationController
    before_action :set_super_user, only: %i[ show edit update destroy ]

    def index
        @super_users = SuperUser.all
    end 

    def new
        @super_user = SuperUser.new
    end

    def show
    end 

    def edit
    end 

    def create
        @super_user = SuperUser.new(super_user_params)
          if @super_user.save
            redirect_to @super_user, notice: "SuperUser was successfully created." 
          else
            render :new
          end
      end

      def update
          if @super_user.update(super_user_params)
            redirect_to @super_user, notice: "SuperUser was successfully updated." 
          else
            render :edit
          end
      end

      def destroy
        @super_user.destroy
        redirect_to root_path, notice: "SuperUser was successfully destroyed." 
      end

      private
      def set_super_user
        @super_user = SuperUser.find(params[:id])
      end
  
      def super_user_params
        params.require(:super_user).permit(:first_name, :last_name, :user_name, :profile_image, :bio, :email, :mobile, :password, :password_confirmation)
      end
end 