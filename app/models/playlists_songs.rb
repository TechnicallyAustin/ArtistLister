class PlaylistSongs < ActiveRecord::Base
# Associations 
serialize :songs, Array
belongs_to :user
belongs_to :playlist
has_many :songs
has_many :artists, through: :songs 
#Validaitons



#Methods
end
