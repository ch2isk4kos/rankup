class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show; end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password_digest, :fav_sport, :fav_team, :fav_player)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
