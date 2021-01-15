class SessionController < ApplicationController

    def new
        @user = User.new
    end

    def create
        user = User.find_by(name: user_params[:name])
        return head(:forbidden) unless user.authenticate(user_params[:password])
        session[:user_id] = user.id
        redirect_to user_path(user)

        # if (user = User.create(user_params))
        #   session[:user_id] = user.id
        #   redirect_to user_path(user)
        # else
        #   render 'new'
        # end
    end

    def destroy
        session.delete("user_id")
        redirect_to root_path
    end

     
end