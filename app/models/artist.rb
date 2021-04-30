class Artist < ActiveRecord::Base 
    serialize :song, Array
    # Associations
    has_many :songs
    belongs_to :playlists
    # Validations



end