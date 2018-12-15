class Music < ApplicationRecord
	belongs_to :disc, inverse_of: :musics
	has_many :artists, through: :recording_artists
	has_many :recording_artists
	accepts_nested_attributes_for :recording_artists, allow_destroy: true
	validates :music_title, presence: true, length: { maximum:50 }
	validates :music_number, presence: true
end