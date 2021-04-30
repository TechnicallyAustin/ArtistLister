class PlaylistSongs < ActiveRecord::Base
serialize :artist, Array
belongs_to :user
belongs_to :playlist
has_many :songs
has_many :songs, through: :artists 


end
