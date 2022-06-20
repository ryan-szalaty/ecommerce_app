class SessionsController < ApplicationController
    def new

    end
    def create
        @user = User.find_by(email: params[:email])
        if @user && @user[:password] == params[:password]
            session[:user_id] = @user[:id]
            redirect_to root_path, notice: "Logged in!"
        elsif !@user
            flash[:alert] = "User does not exist. Please try again or register first."
            redirect_to login_path, allow_other_host: true
        else
            flash[:alert] = "Invalid email or password."
            redirect_to login_path, allow_other_host: true
        end
    end
    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out!"
    end
end
