class User::PlaylistsController < ApplicationController
    def index
        @user - User.find(params[:id]
        end

    def show
    end

    def new
    end

    def create 
    end

    def edit
    end

    def update
    end

    def delete 
    end

    private
    
    def user_params
        params.require(:user).permit(:name,)

    end

    def user_selector
        @user = User.find(params[:id]
    end
    


end
