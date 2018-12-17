class AddFavoriteArtistToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :favorite_artist, :string
  end
end
