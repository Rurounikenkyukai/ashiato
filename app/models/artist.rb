class Artist < ApplicationRecord
    has_one :music
	  has_many :performers
	  validates :artist_name, presence: true
end
