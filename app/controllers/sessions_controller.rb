class SessionsController < ApplicationController

    def new
    end

    # login
    def create
        user = User.find_by(email: params[:user][:email])
        # byebug
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to user
        else
            render :new
        end
    end

    # logout
    def destroy
        session.clear
        redirect_to root_path
    end

end
