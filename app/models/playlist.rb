class Playlist < ApplicationRecord
    # Associations 
    has_many :artists
    has_many :songs, through: :artists
    belongs_to :user

    # Validations
end
