class ItemsController < ApplicationController
    def create
        @user = User.find(params[:user_id])
        @item = @user.items.create(items_params)
        if @item.save
            flash[:success] = "Successfully added to cart."
            redirect_to users_path(@user)
        else
            flash[:alert] = "Something went wrong. Please try again."
            redirect_to store_path(params[:id])
        end
    end

    def destroy
        @user = User.find(params[:user_id])
        @item = Item.find(params[:id])

        @item.destroy

        redirect_to user_path(@user), status: :see_other
    end

    private def items_params
        params.permit(:id, :user_id, :title, :price, :image)
    end
end
