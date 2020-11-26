class User < ApplicationRecord
    # Associations
    has_many :playlists
    has_many :songs, through: :playlists
    has_secure_password
    
    # Validations


end
