module ArtistsHelper
    def find_or_create_by(name)
        Artist.find(name: params[:name]) || Artist.create(name: params[:name])
        name.save
        
    end
    
end
