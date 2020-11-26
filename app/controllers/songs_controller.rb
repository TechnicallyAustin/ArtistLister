class SongsController < ApplicationController

    def index
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

    def songs_params
        params.require(:song).permit(:name, :artist)
    end

    def song_selector
        @song = Song.find(params[:id])
    end
    


end
