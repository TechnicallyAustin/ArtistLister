class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :song
      t.belongs_to :playlists

      t.timestamps
    end
  end
end
