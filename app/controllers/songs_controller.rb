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
        @song = Song.new(playlist_id: params[:playlist_id])
        
        @playlist_song = Song.new
    end

    def create
       @song = Song.create(song_params)
       #@song.artist = Artist.find_or_create_by(name: params[:song][:artist_name])
       #@song.artist_id = @song.artist.id
       binding.pry 
       if @song.save
        render :show
       binding.pry
       end
       # a method that finds or creates the artist and assigns the song.artist_id with that id
       # a method that associates this song with a playlist. can be done from the palylist page maybe
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
