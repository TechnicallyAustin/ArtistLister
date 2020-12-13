class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        song_selector
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new(songs_params)
        if @song.save 
            redirect_to :show
        else
            render :new 
        end
        
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
