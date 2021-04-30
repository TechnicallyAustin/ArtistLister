require 'pry'
class User < ActiveRecord::Base 
    serialize :playlist, Array
    # Associations
    has_many :playlists
    has_many :playlist_songs
    has_many :songs, through: :playlist_songs
    has_many :artists, through: :playlist_songs
    # Validations
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
    validates :password, presence: true
    
    
    has_secure_password

    #methods
    

    def full_name
        self.first_name + " " + self.last_name
    end

    
    

end
