class PlaylistsController < ApplicationController
    layout "layouts/playlist"
    def index
        @user = User.find(session[:user_id])
        @playlists = Playlist.all
    end

    def show
        playlist_selector
    end

    def new
        @playlist = Playlist.new
    end

    def create
        @playlist = Playlist.new(playlist_params)
        if @playlist.save 
            redirect_to :show
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
        params.require(:playlist).permit(:description, song: [
            title: [],
            artist: [],
            rating: []
        ]
        )
    end

    def playlist_selector
        @playlist = Playlist.find(params[:id])
    end
    


end
