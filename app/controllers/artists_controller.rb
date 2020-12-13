class ArtistsController < ApplicationController
    
    def index
        @artists = Artist.all
    end

    def show
        artist_selector
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artist_params)
        if @artist.save
            redirect_to :show
        else
            redirect_to :new
        end
        
    end
    
    def edit
    end

    private
    
    def artist_params
        params.require(:artist).permit(:name)
    end

    def artist_selector
        @artist = Artist.find(params[:id])
    end
    
end
