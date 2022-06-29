class UsersController < ApplicationController
    def index
        if session[:user_id]
            @user = User.find(session[:user_id])
        end
    end
    def show
        @user = User.find(params[:id])
    end
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Successfully registered!"
        else
            render :new, status: :unprocessable_entity
        end
    end
    def edit
        @user = User.find(params[:id])
    end
    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            flash[:notice] = "User successfully updated."
            redirect_to @user
        else
            flash[:alert] = "Unable to update user Please try again."
            render :edit, status: :unprocessable_entity
        end
    end
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        flash[:notice] = "User successfully deleted."
        redirect_to root_path, status: :see_other
    end

    private def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end


