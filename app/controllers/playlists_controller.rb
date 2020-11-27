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
    
    def playlsit_params
        params.require(:playlist).permit(:name)
    end

    def playlist_selector
        @playlist = Playlist.find(params[:id]
    end
    


end
