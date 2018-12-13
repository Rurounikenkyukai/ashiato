class Artist < ApplicationRecord
	has_many :recording_artists
	has_many :musics, through: :recording_artists
	has_many :performers
	validates :artist_name, presence: true
end
