class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :song
      t.belongs_to :song


      t.timestamps
    end
  end
end
