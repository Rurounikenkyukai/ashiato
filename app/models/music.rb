class Music < ApplicationRecord
	belongs_to :disc, inverse_of: :musics
	belongs_to :artist, inverse_of: :music
	validates :music_title, presence: true, length: { maximum:50 }
	validates :music_number, presence: true
end
