require 'pry'
class UsersController < ApplicationController
    layout 'layouts/user'
    def new
        @user = User.new
    end

    def create
        #binding.pry
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to '/'
        else
            render :new
        end
    
    end

    def show
        user_selector
        @playlist = Playlist.find_or_create_by(title: params[:title])
        @song = Song.find_or_create_by(name: params[:name])
       # @artist = Artist.find(name: params[:name])
    end


    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :username, :password)
    end


    def user_selector
    @user = User.find(params[:id])
    end


end
