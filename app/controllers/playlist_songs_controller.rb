class PlaylistSongsController < ApplicationController

    def create
        @playlist_song = Playlist_song.new
    end

    def new
        @playlist_song = Playlist_song.new(playlist_song_params)
    end

    def index 
    end

    def edit
    end



end
