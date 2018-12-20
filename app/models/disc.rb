class Disc < ApplicationRecord
	belongs_to :cd, inverse_of: :discs
	has_many :musics, inverse_of: :disc
    has_many :artists, through: :musics
	accepts_nested_attributes_for :musics, allow_destroy: true
	validates :disc_number, presence: true
end
