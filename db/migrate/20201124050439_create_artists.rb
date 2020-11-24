class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.name :string

      t.timestamps
    end
  end
end
