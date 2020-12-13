class User < ApplicationRecord
    # Associations
    has_many :playlists
    has_many :songs, through: :playlists
    has_secure_password
    
    # Validations


    #methods
    

    def full_name
        self.first_name + " " + self.last_name
    end

    
    

end
