class Playlist < ApplicationRecord
    # Associations 
    has_many :users
    has_many :playlist_songs
    has_many :artists, through: :songs 
    # Validations
    validates :title, presence: true
    validates :description, presence: true
    validates :song, presence: true
    validates :artist, presence: true 


    #methods
    
end
