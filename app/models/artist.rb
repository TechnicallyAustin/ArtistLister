class Artist < ApplicationRecord
    attr_accessor :artist
    # Associations
    has_many :songs
    belongs_to :playlists
    # Validations



end
