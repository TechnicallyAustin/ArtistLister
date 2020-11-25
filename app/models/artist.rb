class Artist < ApplicationRecord
    # Associations
    has_many :songs
    belongs_to :playlist
    
    # Validations



end
