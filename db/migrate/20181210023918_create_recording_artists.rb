class CreateRecordingArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :recording_artists do |t|
       t.integer   :artist_id
       t.integer   :music_id
      t.timestamps
    end
  end
end
