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
        @song = Song.new(song_params)
        if @song.save 
            redirect_to :show
        else
            render :new 
        end
        
    end

    def edit
        @song = Song.Find(params[:id])
        @song.update(song_params(:rating))
        redirect_to_song_path(@song)
     end

    def delete
    end

    private

    def song_params
        params.require(:song).permit(:name, :artist, :rating)
    end

    def song_selector
        @song = Song.find(params[:id])
    end
    


end
