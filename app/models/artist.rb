class Artist < ApplicationRecord
    # Associations
    has_many :songs
    belongs_to_many :playlists
    
    
    # Validations



end
