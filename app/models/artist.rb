class Artist < ApplicationRecord
      has_many :musics ,inverse_of: :artist
      has_many :discs, through: :musics
	  has_many :performers

	  validates :artist_name, presence: true
end
