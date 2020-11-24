class CreatePlaylists < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists do |t|
      t.title :string
      t.user_id :belongs_to

      t.timestamps
    end
  end
end
