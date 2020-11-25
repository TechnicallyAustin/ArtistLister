class Song < ApplicationRecord
    # Associations
    belongs_to :artist
    belongs_to :playlist 

    # Validations

end
