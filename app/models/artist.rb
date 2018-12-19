class Artist < ApplicationRecord
    has_one :music, inverse_of: :artist
	  has_many :performers

	  validates :artist_name, presence: true
end
