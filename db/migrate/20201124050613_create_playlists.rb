class CreatePlaylists < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists do |t|
      t.string :title 
      t.string :description
      t.text :song
      t.text :artist
      t.belongs_to :user
      

      t.timestamps
    end
  end
end
