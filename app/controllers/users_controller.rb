class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new
        @user.username = params.require(:user)['username']
        @user.password = params.require(:user)['password']
        if @user.save
            flash[:notice] = "注册成功,请登录"
            redirect_to new_session_path
        else
            render action: :new 
        end
    end
end
