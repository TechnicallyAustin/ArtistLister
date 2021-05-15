class Playlist < ActiveRecord::Base 
    serialize :song, Array 
    serialize :song_id, Array
    serialize :artist, Array 
    # Associations 
    has_many :users
    has_many :songs
    has_many :artists, through: :songs
    has_many :playlist_songs
    # Validations
    validates :title, presence: true
    validates :description, presence: true

    




    #methods
    @@all = []
    def artist_attributes=(artist)
        self.artist = Artist.find_or_create_by(name: artist[:name])
        self.artist.update(artist)
    end
    
end
