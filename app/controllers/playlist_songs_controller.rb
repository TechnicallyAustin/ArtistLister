class PlaylistSongsController < ApplicationController

    def create
        @playlist_song = Playlist_song.new
        
    end

    def new
        @playlist = Playlist.find 
        @playlist_song = Song.new(@playlist_song_params)
    end

    def index 
    end

    def edit
    end

    private

    def playlist_songs_params
        params.require(:playlist_song).permit(:name, :artist, :rating)
    end




end
