class Song < ActiveRecord::Base 
    # Associations
    belongs_to :song
    belongs_to :artist
    belongs_to :playlist_song
    # Validations
    validates :name, presence: true
    validates :artist_name, presence: true
    validates :rating, presence: true
    # Write a validation that will Limit the rating value from 1-10
    @@all = []


end
