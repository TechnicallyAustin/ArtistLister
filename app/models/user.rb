class User < ApplicationRecord
    # Associations
    has_many :playlists
    has_many :songs, through: :playlists
    has_secure_password
    # Validations
    validates :first_name, pressence: true
    validates :last_name, pressence: true
    validates :email, pressence: true
    validates :email, uniqueness: true
    validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
    validates :password, pressence: true



    #methods
    

    def full_name
        self.first_name + " " + self.last_name
    end

    
    

end
