class Playlist < ApplicationRecord
    # Associations 
    has_many :users
    has_many :playlist_songs
    has_many :artists, through: :songs 
    # Validations
    validates :title, presence: true
    validates :description, presence: true




    #methods
    def artist_attributes=(artist)
        self.artist = Artist.find_or_create_by(name: artist[:name])
        self.artist.update(artist)
    end
    
end
