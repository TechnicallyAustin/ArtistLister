class Song < ApplicationRecord
    # Associations
    belongs_to :artist
    belongs_to :playlist 
    # Validations
    validates :name, presence: true
    validates :artist, presence: true
    validates :rating, presence: true
    # Write a validation that will Limit the rating value from 1-10


end
