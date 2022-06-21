class ItemsController < ApplicationController
    def create
        @user = User.find(params[:user_id])
        @item = @user.items.create(items_params)
        if @item.save
            flash[:success] = "Successfully added to cart."
            redirect_to users_path(@user)
        else
    end

    def items_params
        params.require(:item).permit(:id, :title, :price, :image)
    end
end
