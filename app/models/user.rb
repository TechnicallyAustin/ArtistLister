class User < ApplicationRecord
    # Associations
    has_many :playlist_songs
    has_many :songs, through: :playlist_songs
    # will need to create a playlist_songs join table

    has_secure_password
    # Validations
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
    validates :password, presence: true



    #methods
    

    def full_name
        self.first_name + " " + self.last_name
    end

    
    

end
