class Playlist < ActiveRecord::Base 
    serialize :song, Array 
    serialize :artist, Array 
    # Associations 
    has_many :users
    has_many :songs
    has_many :artists, through: :songs
    has_may :playlist_songs
    # Validations
    validates :title, presence: true
    validates :description, presence: true




    #methods
    def artist_attributes=(artist)
        self.artist = Artist.find_or_create_by(name: artist[:name])
        self.artist.update(artist)
    end
    
end
