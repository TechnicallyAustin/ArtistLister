class UserPlaylists < ActiveRecord::Migration[6.0]
  def change
    create_table :user_playlists do |t|
      t.string :title
      t.text :description
      t.belongs_to :user
      t.string :songs
    end
  end
end
