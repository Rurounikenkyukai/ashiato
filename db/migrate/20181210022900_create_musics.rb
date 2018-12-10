class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
    	t.string   :music_title
    	t.integer  :music_number
    	t.integer  :disc_id
      t.timestamps
    end
  end
end
