class Artist < ApplicationRecord
    # Associations
    has_many :songs
    belongs_to :playlists
    # Validations



end
