require 'pry'
class SongsController < ApplicationController
    #layout 'layouts/songs'
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
        binding.pry
        @song = Song.new(song_params)
        @song.artist = Artist.find_or_create_by(name: params["song"]["artist_name"])
        #@song.rating = params["song"]["rating"]
        byebug

    

        #byebug
    end

    def edit
        @song = Song.Find(params[:id])
        @song.update(song_params(:rating))
        redirect_to song_path(@song)
     end

    def delete
    end

    private

    def song_params
        params.require(:song).permit(:name, :artist_name, :rating)
    end

    def song_selector
        @song = Song.find(params[:id])
    end
end
