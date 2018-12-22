class CreateRecodingArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :recoding_artists do |t|
      t.integer   :cd_id
      t.integer   :artist_id
      t.timestamps
    end
  end
end
