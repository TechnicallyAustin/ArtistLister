class ArtistsController < ApplicationController
    
    def index
        @artists = Artist.all
    end

    def show
    end

    def new
    end

    def create
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
