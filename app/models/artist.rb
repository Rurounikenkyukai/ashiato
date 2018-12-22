class Artist < ApplicationRecord
      has_many :musics ,inverse_of: :artist
      has_many :discs, through: :musics
	  has_many :performers
	  has_many :recoding_artists
	  has_many :cds, through: :recoding_artists
	  validates :artist_name, presence: true
end
