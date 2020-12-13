class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            render :show
        else
            redirect_to '/signup'
        end
    end

    def show
        user_selector 
    end


    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end


    def user_selector
    @user = User.find(params[:id])
    end


end
