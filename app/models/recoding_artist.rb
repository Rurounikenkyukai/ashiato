class RecodingArtist < ApplicationRecord
	belongs_to :artist
	belongs_to :cd
end
