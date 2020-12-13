class Playlist < ApplicationRecord
    # Associations 
    has_many :artists
    has_many :songs, through: :artists
    belongs_to_many :users

    # Validations


    #methods
    
end
