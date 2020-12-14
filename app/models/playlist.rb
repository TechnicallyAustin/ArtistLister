class Playlist < ApplicationRecord
    # Associations 
    has_many :artists
    has_many :songs, through: :artists
    belongs_to_many :users
    # Validations
    validates :title, pressence: true
    validates :description, pressence: true
    validates :song, presence: true
    validates :artist, pressence: true 


    #methods
    
end
