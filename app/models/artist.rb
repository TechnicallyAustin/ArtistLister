class Artist < ActiveRecord::Base 
    serialize :song_id, Array
    # Associations
    has_many :songs
    belongs_to :playlists
    # Validations
    validates :name, presence: :true 
end