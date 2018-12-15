class AddArtistIdToMusics < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :artist_id, :integer
  end
end
