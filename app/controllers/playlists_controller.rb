class PlaylistsController < ApplicationController
    layout "layouts/playlist"
    def index
        @user = User.find(session[:user_id])
        @playlists = Playlist.all
    end

    def show
        @user = User.find(session[:user_id])
        playlist_selector

    end

    def new
        @playlist = Playlist.new(user_id: params[:user_id])
    end

    def create
        @playlist = Playlist.create(playlist_params)
        @playlist.user_id = find_user.id
        #binding.pry 
        if @playlist.save 
        redirect_to user_playlist_path(find_user.id, @playlist) 
        else
            render :new
            #add auto popoluation and errors to new
        end

    end

    def edit
        @playlist
    end

    def update
    end

    def delete 
    end

    private
    
    def playlist_params
        params.require(:playlist).permit(:title, :description)
    end

    def playlist_selector
        @playlist = Playlist.find(params[:id])
    end

    def find_user
        User.find(session[:user_id])
    end

    


end
